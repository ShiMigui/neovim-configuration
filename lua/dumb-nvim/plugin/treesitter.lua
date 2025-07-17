local languages = { "lua" }

return {
	'nvim-treesitter/nvim-treesitter',
	priority = 995,
	branch = 'main',
	build = ':TSUpdate',
	opts = {
		ensure_installed = languages,
		auto_install = true, -- Set true, if you have installed `tree-sitter` CLI tool, otherwise is recommended false.
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
		indent = {
			enable = true
		},
	},
}
