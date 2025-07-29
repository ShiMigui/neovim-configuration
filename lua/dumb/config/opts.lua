local opts = {
	number = true, -- Do not show absolute line numbers (useful if you want only relative numbers)
	relativenumber = true, -- Show relative line numbers (helps with movements like 5j/5k)
	cursorline = false, -- Visually highlight the current line

	tabstop = 2, -- A <Tab> character is displayed as taking up 2 visual spaces
	shiftwidth = 2, -- Used for auto-indentation, defines how many spaces to use
	expandtab = false, -- Use real tab characters instead of converting to spaces
	smartindent = true, -- Automatically indent new lines based on the previous line

	wrap = true, -- Visually wrap long lines
	scrolloff = 10, -- Keep lines visible above and below the cursor when scrolling
	sidescrolloff = 10, -- Keep columns visible to the left and right when scrolling horizontally

	ignorecase = true, -- Searches ignore case by default
	smartcase = true, -- If the search term contains uppercase letters, the search becomes case-sensitive

	termguicolors = true, -- Enable 24-bit RGB color support (for prettier themes)
	signcolumn = "yes", -- Always show the sign column for diagnostics, git icons, etc.

	splitbelow = true, -- Horizontal splits open the new window below
	splitright = true, -- Vertical splits open the new window to the right
	timeoutlen = 400, -- Timeout (in ms) for completing key sequences
}

for k, v in pairs(opts) do
	vim.opt[k] = v
end
