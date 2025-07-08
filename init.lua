vim.g.mapleader = "\\" -- <leader> is a special key used in some key maps

require("configs")

local lazy = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazy) then -- Does a loop to clone lazy.nvim repository, while it isn't detected.
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		"--single-branch",
		lazy,
	})
end
vim.opt.rtp:prepend(lazy)

require("lazy").setup("plugins")
