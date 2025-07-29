return {
	"stevearc/oil.nvim", -- Docs: https://github.com/stevearc/oil.nvim
	lazy = false,
	dependencies = { "nvim-tree/nvim-web-devicons", opts = {} },
	opts = {
		keymaps = {
			["g?"] = { "actions.show_help", mode = "n" },
			["b"] = { "actions.parent", mode = "n" },
			["l"] = { "actions.select", mode = "n" },

			-- ["<C-w><C-v>"] = { "actions.select", opts = { vertical = true } },
			-- ["<C-w><C-h>"] = { "actions.select", opts = { horizontal = true } },

			["<C-p>"] = "actions.preview",
			["<C-c>"] = { "actions.close", mode = "n" },
			["<C-l>"] = "actions.refresh",
			["_"] = { "actions.open_cwd", mode = "n" },

			["gs"] = { "actions.change_sort", mode = "n" },
			["gx"] = "actions.open_external",
			["g."] = { "actions.toggle_hidden", mode = "n" },
			["g\\"] = { "actions.toggle_trash", mode = "n" },
		},
		use_default_keymaps = false,
		skip_confirm_for_simple_edits = true,
		view_options = { show_hidden = true },
	},
	keys = {
		{ "-", "<cmd>Oil<cr>", desc = "Open parent directory", mode = "n" },
	},
}
