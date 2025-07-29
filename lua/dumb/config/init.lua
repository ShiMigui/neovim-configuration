local config_path = vim.fn.stdpath("config") .. "/lua/dumb/config"
for _, file in ipairs(vim.fn.readdir(config_path)) do
	if file:sub(-4) == ".lua" and file ~= "init.lua" then
		local module = "dumb.config." .. file:sub(1, -5)
		require(module)
	end
end
