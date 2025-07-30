--[[
-- LSPConfig: Used to configuration of LSPs
-- MasonLSPConfig: Auto-configures all languages installed on Mason
--]]
return {
	"neovim/nvim-lspconfig",
	dependencies = "mason-org/mason-lspconfig.nvim",
	opts = {
		servers = {
			lua_ls = {},
			html = {},
			ts_ls = {},
			sqlls = {},
			cssls = {},
			yamlls = {},
			dockerls = {},
			intelephense = {},
			docker_compose_language_service = {},
		},
	},
	config = function(_, opts)
		local module = require("lspconfig")
		local mason_lspconfig = require("mason-lspconfig")

		local list = {}

		for lsp, cfg in pairs(opts.servers) do
			cfg.capabilities = {} -- require("blink.cmp").get_lsp_capabilities(cfg.capabilities)
			module[lsp].setup(cfg)
			table.insert(list, lsp)
		end

		mason_lspconfig.setup({ ensure_installed = list })
	end,
}
