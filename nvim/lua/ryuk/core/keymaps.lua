-- keymaps
local keymap = vim.keymap

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("i", "jk", "<esc>")
keymap.set("i", "kj", "<esc>")
keymap.set("i", "jj", "<esc>")
keymap.set("i", "kk", "<esc>")

-- buffer management
-- keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>")
-- keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<cr>")
keymap.set("n", "<Tab>", "<C-^>")
-- keymap.set("n", "<leader>q", ":bdelete<CR>")

keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- =====================================================================
-- 1. ☁️  Floating Terminal (Quick Tasks)
-- =====================================================================
keymap.set({ "n", "t" }, "<leader>T", function()
  require("snacks").terminal.toggle(nil, {
    win = { style = "float", border = "rounded" },
  })
end, { desc = "Toggle Floating Terminal" })

-- =====================================================================
-- 2. 🪟  Split Terminal (Active/Long Tasks)
-- This opens at the bottom and stays there while you work.
-- =====================================================================
keymap.set({ "n", "t" }, "<leader>ts", function()
  require("snacks").terminal.toggle(nil, {
    win = { 
      position = "bottom",
      height = 0.3, -- Takes up 30% of the screen
    },
  })
end, { desc = "Toggle Split Terminal" })

-- =====================================================================
-- 3. 🚀 Code Runner (The "Hold" Runner)
-- =====================================================================
keymap.set("n", "<leader>e", function()
  vim.cmd("write")
  local ft = vim.bo.filetype
  local file = vim.fn.expand("%")
  local hold = " ; echo ''; echo 'Press Enter to close...'; read"
  
  -- We keep this as a float because it's usually for one-off runs
  local term_opts = { win = { style = "float", border = "rounded" } }

  if ft == "go" then
    require("snacks").terminal.toggle("go run " .. file .. hold, term_opts)
  elseif ft == "cpp" then
    require("snacks").terminal.toggle("g++ " .. file .. " -o out && ./out" .. hold, term_opts)
  else
    print("❌ No run command for: " .. ft)
  end
end, { desc = "Run Code in Float" })

-- =====================================================================
-- 2. Trouble Diagnostics Menu
-- =====================================================================
keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Open Trouble Menu" })


