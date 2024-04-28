return {
	{
		"stevearc/conform.nvim",
		event = "BufWritePre", -- uncomment for format on save
		config = function()
			require("configs.conform")
		end,
	},

	-- These are some examples, uncomment them if you want to see them work!
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("nvchad.configs.lspconfig").defaults()
			require("configs.lspconfig")
		end,
	},

	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"lua-language-server",
				"stylua",
				"html-lsp",
				"css-lsp",
				"prettier",
				"ansible-language-server",
				"ansible-lint",
				"bash-language-server",
				"clangd",
				"clang-format",
				"gopls",
				"csharp-language-server",
				"csharpier",
				"pyright",
				"ruff-lsp",
				"rust-analyzer",
				"terraform-ls",
			},
		},
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			auto_install = true,
			ensure_installed = {
				"vim",
				"lua",
				"vimdoc",
				"bash",
				"arduino",
				"c",
				"c_sharp",
				"cmake",
				"html",
				"css",
				"yaml",
				"cpp",
				"dockerfile",
				"go",
				"java",
				"javascript",
				"make",
				"markdown_inline",
				"python",
				"terraform",
				"typescript",
				"angular",
				"rust",
			},
			highlight = {
				enable = true,
			},
		},
	},

	-- {
	-- 	"nvimtools/none-ls.nvim",
	-- 	ft = { "python" },
	-- 	opts = function()
	-- 		require("configs.null-ls")
	-- 	end,
	-- },
	{
		"mfussenegger/nvim-dap",
	},
	{
		"rcarriga/nvim-dap-ui",
	},
}
