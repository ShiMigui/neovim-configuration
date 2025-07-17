return {
	"nvim-neo-tree/neo-tree.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	event = "VimEnter",
	keys = {
		{ "<leader>e", "<cmd>Neotree toggle<CR>", desc = "Toggle Neo-tree" },
	},
	opts = {
		hide_root_node = true,
		use_popups_for_input = false,
		window = {
			width = 25,
			mappings = {
				L = "expand_all_subnodes",
				H = "close_all_subnodes",
				q = "close_window",
				h = "close_node",
				l = "open",
				gu = "git_unstage_file",
				ga = "git_add_file",
				gA = "git_add_all",
				gc = "git_commit",
				gp = "git_push",
			},
		},
		event_handlers = {
			{
				event = "file_opened",
				handler = function()
					vim.cmd("Neotree close")
				end,
			},
		},
		filesystem = {
			filtered_items = {
				show_hidden_count = false,
				hide_dotfiles = false,
				hide_gitignored = false,
				hide_by_name = { ".git", "node_modules" },
			},
			hijack_netrw_behavior = "open_default",
		},
	},
}
