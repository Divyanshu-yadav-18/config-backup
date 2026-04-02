return {
  "L3MON4D3/LuaSnip",
  -- Ensure it loads after you open a file
  event = "VeryLazy", 
  dependencies = { "rafamadriz/friendly-snippets" },
  config = function()
    local ls = require("luasnip")

    -- 1. Load standard VSCode snippets (like friendly-snippets)
    require("luasnip.loaders.from_vscode").lazy_load()

    -- 2. FORCE load your custom 'snippets' folder
    -- This points to ~/.config/nvim/snippets/
    require("luasnip.loaders.from_vscode").lazy_load({ 
        paths = { vim.fn.stdpath("config") .. "/snippets" } 
    })
  end,
}
