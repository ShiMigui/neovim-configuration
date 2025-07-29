return {
	"projekt0n/github-nvim-theme",
	name = "github-theme",
	lazy = false,
	priority = 1000,
	config = function()
		-- Github themes: https://github.com/projekt0n/github-nvim-theme
		-- To search for others themes: https://github.com/topics/neovim-colorscheme
		vim.cmd("colorscheme github_dark_high_contrast")
	end,
}
