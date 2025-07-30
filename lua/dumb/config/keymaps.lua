local function set(mode, inp, fn, desc)
	return vim.keymap.set(mode, inp, fn, { desc = desc })
end

-- General
set("n", "sh", "<cmd>terminal<cr>", "Opens terminal in current tab")
set("n", "<Esc>", "<cmd>noh<cr>", "Removes highlighting")
set("n", "yp", "yyp", "Duplicates the line above")
set("n", "yP", "yyP", "Duplicates the line below")
set("i", "jk", "<Esc>", "Exits insert mode")

set("n", "<M-n>", "<cmd>cnext<cr>", "Go to next quickfix")
set("n", "<M-p>", "<cmd>cprev<cr>", "Go to prev quickfix")
set("n", "<M-q>", "<cmd>cclose<cr>", "Close quickfix")
set("n", "<M-o>", "<cmd>copen<cr>", "Open quickfix")
