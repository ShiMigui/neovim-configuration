vim.g.mapleader = "\\"

local function set(mode, inp, fn, desc)
	return vim.keymap.set(mode, inp, fn, { desc = desc })
end

-- General
set('n', 'sh', '<cmd>terminal<cr>', 'Opens terminal in current tab')
set('n', '<Esc>', '<cmd>noh<cr>',  'Removes highlighting')
set('n', 'yp', 'yyp',  'Duplicates the line above')
set('n', 'yP', 'yyP',  'Duplicates the line below')
set('i', 'jk', '<Esc>',  'Exits insert mode')

-- Buffers
set('n', '<C-b><C-q>', '<cmd>bd<cr>', 'Closes current buffer')
set('n', '<C-Tab>', '<cmd>bn<cr>', 'Next buffer')
set('n', '<C-S-Tab>', '<cmd>bp<cr>', 'Next buffer')
set('n', '<C-b><C-n>', ':enew<CR>', 'New empty buffer')

-- Tabs
set('n', '<C-t>sh', '<cmd>tabnew | terminal<cr>', 'Opens a terminal in new tab')
set('n', '<C-t><C-n>', ':tabnew<CR>', 'New tab')
set('n', '<C-t><C-q>', ':tabclose<CR>', 'Close tab')
set('n', '<C-t><C-l>', 'gt', 'Next tab')
set('n', '<C-t><C-h>', 'gT', 'Previous tab')

vim.api.nvim_create_autocmd("BufWritePre", { -- Creates directory recursively if it doesn't exists
  pattern = "*",
  callback = function()
    local dir = vim.fn.expand("<afile>:p:h")
    if vim.fn.isdirectory(dir) == 0 then vim.fn.mkdir(dir, "p") end
  end,
})
