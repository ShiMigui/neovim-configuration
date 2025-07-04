vim.g.mapleader = "\\" -- This config sets the <leader> as '\', if you want to use space instead change to ' '.
vim.g.maplocalleader = vim.g.mapleader

require('config.options') -- ./lua/config/options.lua
require('config.keymaps') -- ./lua/config/keymaps.lua

local lazy = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazy) then -- Does a loop to clone LazyVIM repository, while it doesn't is detected.
  vim.fn.system({
    "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", "--single-branch", lazy
  })
end
vim.opt.rtp:prepend(lazy)

-- Importing plugins...
require("config.lazy")
