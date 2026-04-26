local dap = require('dap')

-- Tell nvim-dap where codelldb can be found
dap.adapters.codelldb = {
    type = "executable",
    command = "codelldb",
}

-- Use nvim dap as debugger for c/c++ files
dap.configurations.cpp = {
    {
        name = "Launch file",
        type = "codelldb",
        request = "launch",
        program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
    },
}
dap.configurations.c = dap.configurations.cpp

