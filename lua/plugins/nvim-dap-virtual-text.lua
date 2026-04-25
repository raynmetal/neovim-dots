return {
	"theHamsta/nvim-dap-virtual-text",
	lazy=false,
	dependencies = {
		{
			"nvim-treesitter/nvim-treesitter",
			lazy = false,
			build = ':TSUpdate',
		},
		"mfussenegger/nvim-dap",
	},
	config = true,
	opts = {
		highlight_changed_variables=true,
		highlight_new_as_changed=true,
		all_references = true,
	},
}

