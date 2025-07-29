return {
	"akinsho/bufferline.nvim",
	event = "VeryLazy",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	keys = {
		{ "<Tab>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer", mode = "n" },
		{ "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", desc = "Previous Buffer", mode = "n" },
		{ "<C-b><C-q>", "<cmd>bd<cr>", desc = "Close Buffer", mode = "n" },
		{ "<C-b><C-n>", "<cmd>enew<cr>", desc = "New empty buffer", mode = "n" },
		{ "<C-b><C-p>", "<cmd>BufferLineTogglePin<cr>", desc = "Toggle pin buffer", mode = "n" },
	},
	opts = {
		options = {
			mode = "buffer",
			show_close_icon = false,
			diagnostics = "nvim_lsp",
			separator_style = "thick",
			show_buffer_close_icons = false,
		},
	},
}
