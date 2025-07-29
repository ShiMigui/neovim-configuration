local function set(mode, inp, fn, desc)
	return vim.keymap.set(mode, inp, fn, { desc = desc })
end

-- General
set("n", "sh", "<cmd>terminal<cr>", "Opens terminal in current tab")
set("n", "<Esc>", "<cmd>noh<cr>", "Removes highlighting")
set("n", "yp", "yyp", "Duplicates the line above")
set("n", "yP", "yyP", "Duplicates the line below")
set("i", "jk", "<Esc>", "Exits insert mode")
