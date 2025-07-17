local set = require("dumb-nvim.config.set")

set("n", "Q", "<cmd>bd<CR>", "Close buffer")
set("n", "<C-Tab>", "<cmd>BufferLineCycleNext<CR>", "Next buffer")
set("n", "<C-S-Tab>", "<cmd>BufferLineCyclePrev<CR>", "Previous buffer")
set("n", "<C-b>q", "<cmd>BufferLineCloseOthers<CR>", "Close all others buffers")

return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = "BufWinEnter",
	opts = {
		options = {
			mode = "buffers",
			diagnostics = "nvim_lsp",
			separator_style = "thick",
			show_buffer_close_icons = false,
			persist_buffer_sort = false,
			show_close_icon = false,

			offsets = { { filetype = "neo-tree" }, },
		},
	},
}
