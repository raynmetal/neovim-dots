return {
	{

		-- autocompletion function
		"hrsh7th/nvim-cmp",
		version = false,
		event = "InsertEnter",

		-- autocompletion sources
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-buffer",
		},

		-- configuration has to be done from within the plugin for this one
		config = function()
			local cmp = require('cmp')
			local opts = {
				sources = cmp.config.sources {
					{ name = "nvim_lsp" },
					{ name = "buffer" },
					{ name = "path" },
				},
				mapping = cmp.mapping.preset.insert({
					["<CR>"] = cmp.mapping.confirm({ select = true })
				}),
			}
			cmp.setup(opts)
		end,
	},

	-- Closely related dependencies, so we'll load them all in the same
	-- plugin config file
	{ "hrsh7th/cmp-nvim-lsp", lazy = true },
	{ "hrsh7th/cmp-path", lazy = true },
	{ "hrsh7th/cmp-buffer", lazy = true },

}
