-- Get config directory
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- If there's nothing at lazypath, we need to install lazy.nvim
if not (vim.uv or vim.loop).fs_stat(lazypath) then

	-- Download the stable branch of lazy.nvim from github
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })

	-- Report any errors that might have occurred while downloading the plugin
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end

-- Look for vim executables inside plugin lazy.nvim
vim.opt.rtp:prepend(lazypath)

-- Initalize lazy.nvim
require("lazy").setup({
	spec = {
		-- import your plugins
		{ import = "plugins" },
	},
	-- Configure other lazy.nvim settings here
	install = { colorscheme = { "habamax" } },
	-- Automatically check for plugin updates
	checker = { enabled = true },
})

