local set = require("config.set")

-- Editor key maps
set("n", "fw", "<cmd>w<CR>", "Save current file")
set("n", "fq", "<cmd>q<CR>", "Quit current window")

set("n", "<Esc>", "<cmd>nohlsearch<CR>", "Clear search highlight")
set("i", "jk", "<Esc>", "Exit INSERT mode")
set("n", "<leader>r", function()
	for name, _ in pairs(package.loaded) do
		if name:match("^plugins") or name:match("^config") then
			package.loaded[name] = nil
		end
	end
	dofile(vim.fn.stdpath("config") .. "/init.lua")
	vim.notify("Configuration reloaded!", vim.log.levels.INFO)
end, "Reload Neovim configuration")

-- File key maps
set("n", "<A-k>", ":m .-2<CR>==", "Move line up")
set("n", "<A-j>", ":m .+1<CR>==", "Move line down")
set("v", "<A-k>", ":m '<-2<CR>gv=gv", "Move lines up")
set("v", "<A-j>", ":m '>+1<CR>gv=gv", "Move lines down")

-- Clipboard key maps
set({ "n", "v" }, "<leader>y", '"+y', "Yank")
set({ "n", "v" }, "<leader>p", '"+p', "Paste")
