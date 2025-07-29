vim.api.nvim_create_autocmd("BufWritePre", { -- Creates directory recursively if it doesn't exists
	pattern = "*",
	callback = function()
		local dir = vim.fn.expand("<afile>:p:h")
		if vim.fn.isdirectory(dir) == 0 then
			vim.fn.mkdir(dir, "p")
		end
	end,
})
