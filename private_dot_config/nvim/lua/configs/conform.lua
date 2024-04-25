local options = {
	formatters_by_ft = {
		lua = { "stylua" },
		python = {
			"ruff_fix",
			"ruff_format",
		},
		rust = {
			"rustfmt",
		},
		terraform = { "terraform_fmt" },
		css = { "prettier" },
		html = { "prettier" },
		["*"] = { "trim_whitespace" },
	},

	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 500,
		lsp_fallback = true,
	},
}

require("conform").setup(options)
