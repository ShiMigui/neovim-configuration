vim.g.mapleader = "\\" -- Can also be " " (space)

local function map(keys, action, desc, modes)
  modes = modes or "n" -- default: Normal mode
  vim.keymap.set(modes, keys, action, { desc = desc, silent = true })
end

-- Temporary keymaps to speed up development
local ctrl_mode = { 'n', 'i', 'v' }
map('<C-b>', '<cmd>Ex<CR>', 'Open files explorer', ctrl_mode)
map('<C-s>', '<Esc><cmd>w<CR>', 'Save file', ctrl_mode)

map('<Esc>', '<cmd>noh<CR>', 'Disable highlighting')
map('jk', '<Esc>', 'Exit INSERT mode', 'i')
map('gy', '"+y', 'Yank to system clipboard', 'v')

map('<A-j>', ':m .+1<CR>==', 'Move line down', 'n')
map('<A-k>', ':m .-2<CR>==', 'Move line up', 'n')
