-- Convention used for invoking custom, user-defined commands
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

-- Display relative line numbers next to each line
vim.opt.nu = true
vim.opt.relativenumber = true

-- Highlight cursor line, and keep 4 rows above and
-- below it
vim.opt.cursorline = true
vim.opt.scrolloff = 4

-- Show whitespace characters
vim.opt.list = true
vim.opt.listchars = {
    tab = "> ",
    trail = "-",
    leadmultispace = ".   ",
    leadtab = "> >",
}

-- Tabs now produce spaces
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.shiftwidth = 4

-- Prompt save if quitting without saving
vim.opt.confirm = true

-- Highlight when yanking (copying) text.  Yanked directly from
-- Neovim's example_init.lua
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    callback = function()
        vim.hl.on_yank()
    end,
})

