local set = require("dumb-nvim.config.set")

set("n", "<leader>d", vim.diagnostic.open_float, "Show diagnostic")

set("n", "fw", "<cmd>w<CR>", "Save current file")
set("n", "fq", "<cmd>q<CR>", "Quit current window")

set("n", "<Esc>", "<cmd>nohlsearch<CR>", "Clear search highlight")
set("i", "jk", "<Esc>", "Exit INSERT mode")

set("n", "<A-k>", ":m .-2<CR>==", "Move line up")
set("n", "<A-j>", ":m .+1<CR>==", "Move line down")
set("v", "<A-k>", ":m '<-2<CR>gv=gv", "Move lines up")
set("v", "<A-j>", ":m '>+1<CR>gv=gv", "Move lines down")

set({ "n", "v" }, "<leader>y", '"+y', "Yank")
set({ "n", "v" }, "<leader>p", '"+p', "Paste")

set("n", "j", "gj", "Down")
set("n", "k", "gk", "Up")
set("v", "j", "gj", "Down")
set("v", "k", "gk", "Up")
