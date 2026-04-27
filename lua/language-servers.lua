vim.lsp.enable('clangd')
vim.lsp.enable('lua-language-server')
vim.lsp.enable('vscode-json-language-server')
vim.lsp.enable('neocmakelsp')

vim.api.nvim_create_autocmd('LspAttach', {
    desc = 'LSP Actions',
    callback = function(args)

        -- Show function description on Shift+K in normal mode
        vim.keymap.set('n', '<leader>K', vim.lsp.buf.hover, { noremap = true, silent = true })
        -- Jump to symbol definition
        vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, { noremap = true, silent = true })
    end,
})

vim.api.nvim_create_autocmd('FileType', {
    pattern = { '<filetype>' },
    callback = function() vim.treesitter.start() end,
})

