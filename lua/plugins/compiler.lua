return {
    {
        "https://github.com/Zeioth/compiler.nvim",
        dependenciens = { "stevearc/overseer.nvim" },
        event = "VeryLazy",
        config = function(_, opts) require("compiler").setup(opts) end,
    },
    {
        "stevearc/overseer.nvim",
        event = "VeryLazy",
        opts = {
            -- Tasks are disposed 5 minutes after running to free resources.
            -- If you need to close a task inmediatelly:
            -- press ENTER in the menu you see after compiling on the task you want to close.

            task_list = {
                direction = "bottom",
                min_height = 25,
                max_height = 25,
                default_detail = 1,
                bindings = {
                    ["q"] = function() vim.cmd("OverseerClose") end,
                }
            }
        },
        config = function(_, opts) require("overseer").setup(opts) end,
    },
}
