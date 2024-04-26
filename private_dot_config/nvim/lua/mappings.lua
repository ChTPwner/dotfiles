require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
vim.keymap.set("n", "<leader>or", "<cmd>Telescope neovim-project discover<cr>")
vim.keymap.set("n", "<leader>oh", "<cmd>Telescope neovim-project history<cr>")
