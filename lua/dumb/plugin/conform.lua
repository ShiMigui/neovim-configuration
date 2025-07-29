local function conform_format()
	require("conform").format({ async = true, lsp_fallback = true })
end

--[[
-- Conform: Configures format-on-save and formatter per language
-- Mason-Conform: Automatticaly installs the formatters listed on Conform with Mason
--]]
return {
	"zapling/mason-conform.nvim",
	dependencies = {
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { "prettierd", "prettier", stop_after_first = true },
				yaml = { "prettierd", "prettier", stop_after_first = true },
				sql = { "pgformatter" },
			},
			format_on_save = {
				timeout_ms = 1000,
				lsp_fallback = true,
			},
		},
		keys = {
			{ "<leader>f", conform_format, desc = "Formats current file", mode = "n" },
		},
	},
	opts = {},
}
