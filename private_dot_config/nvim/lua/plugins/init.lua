return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			"lua-language-server", "stylua",
  			"html-lsp", "css-lsp" , "prettier",
        "ansible-language-server", "ansible_lint",
        "bash-language-server",
        "clangd", "gopls", "omnisharp",
        "pyright", "mypy", "ruff-lsp", "rust-analyzer", "rustfmt"
  		},
  	},
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
      auto_install = true,
  		ensure_installed = {
  		  "vim", "lua", "vimdoc", "bash", "arduino", "c", "c_sharp", "cmake",
        "html", "css", "yaml", "cpp", "dockerfile", "go", "java", "javascript", "make",
        "markdown_inline", "python", "terraform", "typescript", "angular",
        "rust"
  		},
      highlight = {
        enable = true,
      }
  	},
  },

  {
    "nvimtools/none-ls.nvim",
    ft = {"python"},
    opts = function()
      require "configs.null-ls"
    end
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end
  }
}
