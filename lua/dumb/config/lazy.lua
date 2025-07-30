local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local output = vim.fn.system({
		"git clone --filter=blob:none branch=stable",
		lazyrepo,
		lazypath,
	})

	if vim.v.shell_error ~= 0 then
		vim.schedule(function()
			vim.notify("Failed to clone lazy.nvim\n" .. output, vim.log.levels.ERROR, {
				title = "Lazy.nvim",
			})
		end)
		error("Startup aborted due to lazy.nvim clone failure")
	end
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		require("dumb.plugin.theme"),
		require("dumb.plugin.mini"),
		require("dumb.plugin.bufferline"),
		require("dumb.plugin.telescope"),
		require("dumb.plugin.treesitter"),
		{ "mason-org/mason.nvim", opts = {} },
		require("dumb.plugin.blinkcmp"),
		require("dumb.plugin.lspconfig"),
		{
			"folke/lazydev.nvim",
			ft = "lua",
			opts = { library = { { path = "${3rd}/luv/library", words = { "vim%.uv" } } } },
		},
		require("dumb.plugin.conform"),
		-- { import = "custom.plugins" },
	},
	-- checker = { enabled = true },
})
