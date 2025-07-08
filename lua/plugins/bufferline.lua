local set = require("configs.set")

return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = "BufWinEnter",
	config = function()
		require("bufferline").setup({
			options = {
				mode = "buffers",
				diagnostics = "nvim_lsp",
				separator_style = "thick",
				show_buffer_close_icons = false,
				persist_buffer_sort = true,
				show_close_icon = false,

				offsets = {
					{ filetype = "neo-tree" },
				},
			},
		})

		set("n", "Q", "<cmd>bd<CR>", "Close buffer")
		set("n", "<C-Tab>", "<cmd>BufferLineCycleNext<CR>", "Next buffer")
		set("n", "<C-S-Tab>", "<cmd>BufferLineCyclePrev<CR>", "Previous buffer")
		set("n", "<C-b>q", "<cmd>BufferLineCloseOthers<CR>", "Close all buffers")
	end,
}
