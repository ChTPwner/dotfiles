return {
  {
    "topaxi/pipeline.nvim",
    keys = {
      { "<leader>ci", "<cmd>Pipeline<cr>", desc = "Open pipeline.nvim" },
    },
    ---@type pipeline.Config
    opts = {},
  },
  -- 1. Automatically install actionlint via Mason
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "actionlint",
      },
    },
  },

  -- 2. Configure nvim-lint to use actionlint on YAML files
  {
    "mfussenegger/nvim-lint",
    opts = function(_, opts)
      opts.linters_by_ft = opts.linters_by_ft or {}
      opts.linters_by_ft.yaml = opts.linters_by_ft.yaml or {}
      table.insert(opts.linters_by_ft.yaml, "actionlint")

      local actionlint = require("lint").linters.actionlint
      --
      -- 1. Explicitly pass the filename so actionlint knows when it's looking at an action.yml
      actionlint.args = {
        "-format",
        "{{json .}}",
        "-",
      }

      -- 2. Trigger on workflows OR custom action.yml files
      ---@diagnostic disable-next-line: inject-field
      actionlint.condition = function(ctx)
        -- Run on workflows OR custom action.yml files
        return string.match(ctx.filename, "%.github/workflows/.*%.ya?ml$") ~= nil
      end
    end,
  },

  -- 3. Fix yamlls schema mapping for custom actions
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        yamlls = {
          settings = {
            yaml = {
              schemas = {
                -- Force yamlls to use the custom action schema for action.yml/yaml
                ["https://json.schemastore.org/github-action.json"] = {
                  "action.yml",
                  "action.yaml",
                  ".github/actions/**/action.yml",
                  ".github/actions/**/action.yaml",
                },
              },
            },
          },
        },
      },
    },
  },
}
