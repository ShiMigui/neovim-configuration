vim.g.mapleader = "\\"

require("dumb-nvim.config")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
local uv = vim.uv or vim.loop

if not uv.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"--branch=stable",
		"https://github.com/folke/lazy.nvim.git",
		lazypath,
	})
	if vim.v.shell_error ~= 0 then
		vim.notify("Failed to clone lazy.nvim!", vim.log.levels.ERROR)
		os.exit(1)
	end
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup("dumb-nvim.plugin")
