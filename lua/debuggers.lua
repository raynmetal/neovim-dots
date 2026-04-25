local dap = require('dap')

-- Useful debugger keybinds
vim.keymap.set("n", "<F5>", function() require('dap').continue() end, {desc = "Start Debugger"})
vim.keymap.set("n", "<F10>", function() require('dap').step_over() end, {desc = "Next"})
vim.keymap.set("n", "<F11>", function() require('dap').step_into() end, {desc = "Step Into"})
vim.keymap.set("n", "<F12>", function() require('dap').step_out() end, {desc = "Step Out"})
vim.keymap.set("n", "<leader>db", function() require('dap').toggle_breakpoint() end, {desc = "Set/Erase [B]reakpoint"})
vim.keymap.set("n", "<leader>dr", function() require('dap').repl.open() end, {desc = "Open [D]ebugger [R]EPL"})
vim.keymap.set("n", "<leader>dR", function() require('dap').restart() end, {desc = "[D]ebugger [R]estart"})
vim.keymap.set("n", "<leader>d<C-o>", function() require('dap').up() end, {desc = "Go up one stack frame"})
vim.keymap.set("n", "<leader>d<C-i>", function() require('dap').down() end, {desc = "Go down one stack frame"})

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

