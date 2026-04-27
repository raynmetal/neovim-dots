return {
    -- Plugin that will implement the debug adapter protocol client
    "mfussenegger/nvim-dap",

    keys = {

        {
            "<F5>", -- When this is pressed (in (n)ormal mode) ...
            function() require('dap').continue() end, -- ... do this
            desc = "Continue/Start Debug Session",
        },

        {
            "<F10>",
            function() require('dap').step_over() end,
            desc = "Next Instruction",
        },

        {
            "<F11>",
            function() require('dap').step_into() end,
            desc = "Step Into",
        },

        {
            "<F12>",
            function() require('dap').step_out() end,
            desc = "Step Out",
        },

        {
            "<leader>db",
            function() require('dap').toggle_breakpoint() end,
            desc = "Set/Erase Breakpoint",
        },

        {
            "<leader>dr",
            function() require('dap').repl.open() end,
            desc = "Open Debug REPL",
        },

        {
            "<leader>dR",
            function() require('dap').restart() end,
            desc = "Restart Debug Session",
        },

        {
            "<leader>d<C-o>",
            function() require('dap').up() end,
            desc = "Go Up One Stack Frame",
        },

        {
            "<leader>d<C-i>",
            function() require('dap').down() end,
            desc = "Go Down One Stack Frame",
        },

    },
}

