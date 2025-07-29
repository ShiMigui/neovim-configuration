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
				theme = "ivy",
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
		local set = vim.keymap.set

		set("n", "<space>ff", tin.find_files)
		set("n", "<space>en", function()
			tin.find_files({ cwd = vim.fn.stdpath("config") })
		end)
		set("n", "<space>fg", tin.live_grep)
		set("n", "<space>fb", tin.buffers)
		set("n", "<space>fh", tin.help_tags)
		set("n", "<space>fo", tin.oldfiles)
	end,
}
