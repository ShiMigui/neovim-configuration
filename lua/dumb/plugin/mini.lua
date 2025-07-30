return {
	"echasnovski/mini.nvim",
	version = false,
	lazy = false,
	keys = {
		{ "<C-b>", "<cmd>lua MiniFiles.open()<cr>", desc = "Opens MiniFiles window", mode = "n" },
	},
	config = function()
		-- Docs: https://github.com/echasnovski/mini.nvim/blob/main/readmes/
		require("mini.move").setup()
		require("mini.pairs").setup()
		require("mini.comment").setup()
		require("mini.statusline").setup({ use_icons = true })
		-- require("mini.completion").setup()
		require("mini.basics").setup({
			mappings = {
				basic = true,
				option_toggle_prefix = [[\]],
				windows = true,
				move_with_alt = true,
			},
		})
		require("mini.files").setup({
			options = {
				use_as_default_explorer = true,
			},
			windows = {
				preview = true,
			},
		})
	end,
}
