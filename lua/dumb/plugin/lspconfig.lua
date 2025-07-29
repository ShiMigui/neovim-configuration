--[[
-- LSPConfig: Used to configuration of LSPs
-- MasonLSPConfig: Auto-configures all languages installed on Mason
--]]
return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
		{
			"folke/lazydev.nvim",
			ft = "lua",
			opts = { library = { { path = "${3rd}/luv/library", words = { "vim%.uv" } } } },
		},
	},
	config = function()
		local caps = { capabilities = require("blink.cmp").get_lsp_capabilities() }
		local lsp = require("lspconfig")
		require("mason-lspconfig").setup({
			handlers = {
				function(ls)
					lsp[ls].setup(caps)
				end,
			},
		})
	end,
}
