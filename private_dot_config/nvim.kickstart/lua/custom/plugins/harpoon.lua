return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    harpoon.setup {}
    local conf = require('telescope.config').values
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require('telescope.pickers')
        .new({}, {
          prompt_title = 'Harpoon',
          finder = require('telescope.finders').new_table {
            results = file_paths,
          },
          previewer = conf.file_previewer {},
          sorter = conf.generic_sorter {},
        })
        :find()
    end
    vim.keymap.set('n', '<leader>aa', function()
      harpoon:list():add()
    end, { desc = 'Harpoon - Add to list' })

    -- vim.keymap.set('n', '<C-e>', function()
    --   harpoon.ui:toggle_quick_menu(harpoon:list())
    -- end)

    vim.keymap.set('n', '<leader>a&', function()
      harpoon:list():select(1)
    end, { desc = 'Harpoon - Select Buffer 1' })
    vim.keymap.set('n', '<leader>aé', function()
      harpoon:list():select(2)
    end, { desc = 'Harpoon - Select Buffer 2' })
    vim.keymap.set('n', '<leader>a"', function()
      harpoon:list():select(3)
    end, { desc = 'Harpoon - Select Buffer 3' })
    vim.keymap.set('n', "<leader>a'", function()
      harpoon:list():select(4)
    end, { desc = 'Harpoon - Select Buffer 4' })
    vim.keymap.set('n', '<leader>a(', function()
      harpoon:list():select(5)
    end, { desc = 'Harpoon - Select Buffer 5' })
    vim.keymap.set('n', '<leader>a-', function()
      harpoon:list():select(6)
    end, { desc = 'Harpoon - Select Buffer 6' })
    vim.keymap.set('n', '<leader>aè', function()
      harpoon:list():select(7)
    end, { desc = 'Harpoon - Select Buffer 7' })
    vim.keymap.set('n', '<leader>a_', function()
      harpoon:list():select(8)
    end, { desc = 'Harpoon - Select Buffer 8' })
    vim.keymap.set('n', '<leader>aç', function()
      harpoon:list():select(9)
    end, { desc = 'Harpoon - Select Buffer 9' })
    vim.keymap.set('n', '<leader>aà', function()
      harpoon:list():select(0)
    end, { desc = 'Harpoon - Select Buffer 10' })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<leader>ap', function()
      harpoon:list():prev()
    end, { desc = 'Go to [P]revious Buffer' })
    vim.keymap.set('n', '<leader>an', function()
      harpoon:list():next()
    end, { desc = 'Go to [N]ext Buffer' })

    vim.keymap.set('n', '<C-e>', function()
      toggle_telescope(harpoon:list())
    end, { desc = 'Open Harpoon window' })
  end,
}
