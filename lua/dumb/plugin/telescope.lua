return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	opts = {
		pickers = {
			find_files = {
				theme = "dropdown",
			},
		},
		extensions = {
			fzf = {},
		},
	},
	config = function(_, opts)
		local tel = require("telescope")
		tel.setup(opts)
		tel.load_extension("fzf")

		local tin = require("telescope.builtin")
		local set = function(cmd, fn)
			return vim.keymap.set("n", cmd, fn)
		end

		set("<C-f><C-f>", tin.find_files)
		set("<C-f><C-g>", tin.live_grep)
		set("<C-f><C-b>", tin.buffers)
		set("<C-f><C-h>", tin.help_tags)
		set("<C-f><C-o>", tin.oldfiles)
		set("<C-f><C-n>", function()
			tin.find_files({ cwd = vim.fn.stdpath("config") })
		end)
	end,
}
