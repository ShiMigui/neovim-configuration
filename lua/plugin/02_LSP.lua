local language_list = require("custom.language_list")

return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = language_list,
			automatic_installation = true,
		})

		local lspconfig = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		local objs = { capabilities = capabilities }

		for _, server in ipairs(language_list) do
			lspconfig[server].setup(objs)
		end
	end,
}
