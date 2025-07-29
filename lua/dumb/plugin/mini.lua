return {
	"echasnovski/mini.nvim",
	version = false,
	config = function()
		-- Docs: https://github.com/echasnovski/mini.nvim/blob/main/readmes/
		require("mini.move").setup()
		require("mini.pairs").setup()
		require("mini.comment").setup()
		require("mini.statusline").setup({ use_icons = true })
		require("mini.basics").setup({
			mappings = {
				basic = true,
				option_toggle_prefix = [[\]],
				windows = true,
				move_with_alt = true,
			},
		})
	end,
}
