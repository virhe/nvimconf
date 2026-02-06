return {
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "ruff_format" },
				rust = { "rustfmt" },
			},

			format_on_save = {
				timeout_ms = 2000,
				lsp_fallback = false,
			},
		},
	},
}
