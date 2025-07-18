local language_list = { "lua_ls", "ts_ls", "intelephense", "docker_compose_language_service", "dockerls" }

return {
	{
		"williamboman/mason.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"neovim/nvim-lspconfig",
			"hrsh7th/cmp-nvim-lsp",
		},
		config = function()
			require("mason").setup()

			local lspconfig = require("lspconfig")
			local objs = { capabilities = require("cmp_nvim_lsp").default_capabilities() }

			for _, server in ipairs(language_list) do
				lspconfig[server].setup(objs)
			end
			lspconfig.lua_ls.setup({
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
						workspace = {
							checkThirdParty = false,
							library = vim.api.nvim_get_runtime_file("", true),
						},
					},
				},
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = language_list,
			automatic_installation = true,
		},
	},
}
