return function(md, cmd, fn, desc) vim.keymap.set(md, cmd, fn, { noremap = true, silent = true, desc = desc }) end
