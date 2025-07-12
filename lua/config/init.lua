local cfgs = {
	number = false,       -- Show absolute line numbers
	relativenumber = true, -- Show relative line numbers
	cursorline = true,    -- Highlight the current line

	tabstop = 2,          -- Number of spaces that a <Tab> counts for
	shiftwidth = 2,       -- Number of spaces for autoindent
	expandtab = false,    -- Use spaces instead of tabs
	smartindent = true,   -- Smart autoindenting on new lines

	wrap = false,         -- Disable line wrapping
	scrolloff = 8,        -- Minimum number of screen lines to keep above and below the cursor
	sidescrolloff = 8,    -- Minimum number of screen columns to keep to the left and right of the cursor

	ignorecase = true,    -- Ignore case in search patterns
	smartcase = true,     -- Override ignorecase if search contains uppercase

	termguicolors = true, -- Enable 24-bit RGB colors
	signcolumn = "yes",   -- Always show the sign column

	splitbelow = true,    -- Horizontal splits will open below
	splitright = true,    -- Vertical splits will open to the right
	timeoutlen = 500,
}

for k, v in pairs(cfgs) do
	vim.opt[k] = v
end

require("config.keymap")
