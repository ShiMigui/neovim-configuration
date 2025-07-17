-- Hello folks, Miguel here! TokyoNight is one of the most popular themes among Neovim users, so I've decided to install it, however you can modify this files as it fits you.
-- If you want to use other themes, see:
-- https://github.com/catppuccin/nvim
-- https://github.com/rose-pine/neovim
-- https://github.com/folke/tokyonight.nvim
-- https://github.com/navarasu/onedark.nvim
-- https://github.com/ellisonleao/gruvbox.nvim

return {
	"folke/tokyonight.nvim",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("tokyonight-night")
	end,
}
