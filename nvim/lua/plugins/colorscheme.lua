
return {
    -- Tokyonight Theme
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            require("tokyonight").setup({
                style = "night",  -- Set to your preferred style
                styles = {
                    functions = {},  -- Modify specific styles as needed
                },
                on_colors = function(colors)
                    colors.hint = colors.orange  -- Customize hint color
                    colors.error = "#ff0000"    -- Customize error color
                end,
            })
        end,
    },

    -- Gruvbox Theme
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            vim.cmd("colorscheme gruvbox")  -- Set the gruvbox theme
        end,
        opts = {},
    },

    -- Transparent Plugin
    {
        "xiyaowong/transparent.nvim",
        priority = 1000,
        config = function()
            require("transparent").setup({
                groups = {
                    "Normal", "NormalNC", "Comment", "Constant", "Special", "Identifier",
                    "Statement", "PreProc", "Type", "Underlined", "Todo", "String", "Function",
                    "Conditional", "Repeat", "Operator", "Structure", "LineNr", "NonText", 
                    "SignColumn", "CursorLine", "CursorLineNr", "StatusLine", "StatusLineNC", 
                    "EndOfBuffer",
                },
                -- Optional settings
                extra_groups = {},    -- Additional groups to make transparent
                exclude_groups = {},  -- Groups to exclude from transparency
            })
        end,
    },
}
