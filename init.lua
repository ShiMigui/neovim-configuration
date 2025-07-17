vim.g.mapleader = "\\"

require("dumb-nvim.config")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("dumb-nvim.plugin")
