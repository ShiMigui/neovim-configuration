local set = vim.keymap.set

local NORMAL = 'n'
local INSERT = 'i'
local VISUAL = 'v'

-- Basic editor operations
set(NORMAL, '<leader>q', ':q<CR>', {desc = 'Close window'})
set(NORMAL, '<leader>w', ':w<CR>', {desc = 'Write file'})
set(INSERT, 'jj', '<Esc>', {desc = 'Exit insert mode'})

-- Buffer navigation (alternative to buffersbar)
-- Note: The next lines are unnecessary(since you have bufferline configured), but if you want to use these instead, only needs to uncomment them.
--[[
set(NORMAL, '<leader>l', ':bn<CR>', {desc = 'Next buffer'})
set(NORMAL, '<leader>h', ':bp<CR>', {desc = 'Previous buffer'})
set(NORMAL, '<leader>d', ':bd<CR>', {desc = 'Close buffer'})]]

-- Clipboard integration
set({NORMAL, VISUAL}, '<leader>y', '"+y', {desc = 'Copy to clipboard'})
set({NORMAL, VISUAL}, '<leader>p', '"+p', {desc = 'Paste from clipboard'})
set(NORMAL, '<S-Insert>', '<C-R>+', {desc = 'Paste from clipboard'})
set(NORMAL, "<Esc>", "<cmd>nohlsearch<CR>", { silent = true })

local opts = { noremap = true, silent = true }

set(NORMAL, "K", ":m .-2<CR>==", opts)
set(VISUAL, "K", ":m '<-2<CR>gv=gv", opts)
set(VISUAL, "J", ":m '>+1<CR>gv=gv", opts)
set(NORMAL, "J", ":m .+1<CR>==", opts)
