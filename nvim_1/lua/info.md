
# 🧠 Neovim Config Overview — Ryuk

A full documentation of the Neovim setup located under `~/.config/nvim/lua/ryuk/`.

---

## 📂 Structure Overview

| Folder/File | Purpose |
|--------------|----------|
| **core/** | Base settings and initialization for Neovim |
| ├── `init.lua` | Loads other core modules (options, keymaps, lazy setup) |
| ├── `options.lua` | Defines editor settings (numbers, tabs, clipboard, etc.) |
| └── `keymaps.lua` | Custom global keymaps and leader setup |
| **lazy.lua** | Sets up `lazy.nvim` plugin manager and loads all plugins |
| **plugins/** | Contains all plugin configurations |
| **plugins/lsp/** | Contains all LSP, completion, and formatter configurations |

---

## ⚙️ Plugin Summary Table

| Plugin File | Plugin(s) | Purpose |
|--------------|------------|----------|
| `barbecue.lua` | `utilyre/barbecue.nvim` | Breadcrumb winbar (shows current file location like functions/classes) |
| `bufferline.lua` | `akinsho/bufferline.nvim` | Visual buffer tabs at top |
| `colors.lua` | Theme-related configuration |
| `comment.lua` | `numToStr/Comment.nvim` | Toggle comments easily |
| `dressing.lua` | `stevearc/dressing.nvim` | Improved UI dialogs & inputs |
| `fidget.lua` | `j-hui/fidget.nvim` | LSP progress indicator |
| `formatting.lua` | `stevearc/conform.nvim` | Code formatting via Prettier, Black, Stylua, etc. |
| `git.lua` | Git utilities (`gitsigns`, etc.) |
| `git-blame.lua` | Inline Git blame annotations |
| `harpoon.lua` | `ThePrimeagen/harpoon` | Quick file bookmarking and navigation |
| `indent-backline.lua` | `lukas-reineke/indent-blankline.nvim` | Visual indent guides |
| `lualine.lua` | `nvim-lualine/lualine.nvim` | Status line customization |
| `markdown.lua` | Markdown preview and tools |
| `mini.lua` | `echasnovski/mini.nvim` | Lightweight utilities: surround, pairs, ai, statusline |
| `nvim-tree.lua` | `nvim-tree/nvim-tree.lua` | File explorer |
| `nvim-highlight-colors.lua` | `brenoprata10/nvim-highlight-colors` | Inline color preview |
| `nvim-ts-autotag.lua` | Auto close/update HTML tags |
| `oil.lua` | `stevearc/oil.nvim` | File explorer alternative |
| `snacks.lua` | `folke/snacks.nvim` | Swiss-army plugin: pickers, notifications, git tools, zen mode, etc. |
| `telescope.lua` | `nvim-telescope/telescope.nvim` | Fuzzy finding |
| `treesitter.lua` | `nvim-treesitter/nvim-treesitter` | Syntax parsing and highlighting |
| `trouble.lua` | `folke/trouble.nvim` | Diagnostics UI |
| `undotree.lua` | `mbbill/undotree` | Undo history viewer |
| `vim-tmux-navigator.lua` | Seamless tmux navigation |
| `which-key.lua` | `folke/which-key.nvim` | Displays available keybindings dynamically |
| **LSP Folder:** |  |  |
| `blink-cmp.lua` | `saghen/blink.cmp` | Autocompletion framework |
| `lazydev.lua` | `folke/lazydev.nvim` | Improved Lua dev experience |
| `lspconfig.lua` | `neovim/nvim-lspconfig` | Sets up LSP servers and keymaps |
| `mason.lua` | `williamboman/mason.nvim` | LSP/DAP/Formatter installer |
| `nvim-cmp.lua` | (commented) legacy config for nvim-cmp |

---

## ⌨️ Keymap Reference Table

### 🧩 General & Global

| Keys | Description | Mode |
|------|--------------|------|
| `<leader>` | Space (leader key) | — |
| `<leader>q` | Delete buffer (via Snacks) | n |
| `<leader>n` | Show notification history | n |
| `<leader>un` | Dismiss all notifications | n |
| `<leader>uw` | Toggle word wrap | n |
| `<leader>us` | Toggle spell check | n |
| `<leader>uL` | Toggle relative numbers | n |
| `<leader>ul` | Toggle absolute line numbers | n |
| `<leader>ud` | Toggle diagnostics | n |
| `<leader>ub` | Toggle background (light/dark) | n |
| `<leader>uh` | Toggle inlay hints | n |

---

### 🧭 Navigation & Windows

| Keys | Description |
|------|-------------|
| `<C-n>` | Toggle file explorer (Snacks.explorer) |
| `<leader>z` | Toggle Zen mode |
| `<leader>Z` | Toggle Zoom mode |

---

### 🔍 Searching & Pickers (Snacks)

| Keys | Description |
|------|-------------|
| `<leader><leader>` | Open buffer picker |
| `<leader>sf` | Find files |
| `<leader>fg` | Find Git files |
| `<leader>sr` | Recent files |
| `<leader>sg` | Grep search |
| `<leader>sB` | Grep all open buffers |
| `<leader>sb` | Search current buffer lines |
| `<leader>sw` | Grep current word or visual selection |
| `<leader>sd` | Diagnostics list |
| `<leader>sl` | Location list |
| `<leader>sq` | Quickfix list |
| `<leader>sh` | Help tags |
| `<leader>sH` | Highlights |
| `<leader>sj` | Jumps |
| `<leader>sk` | Keymaps |
| `<leader>sC` | Commands |
| `<leader>sa` | Autocommands |
| `<leader>sm` | Marks |
| `<leader>sR` | Resume last search |
| `<leader>sM` | Man pages |
| `<leader>ss` | LSP symbols |
| `<leader>qp` | Projects |
| `<leader>uC` | Colorschemes |

---

### 🧠 LSP

| Keys | Action |
|------|--------|
| `gd` | Go to definition |
| `gr` | Show references |
| `gI` | Go to implementation |
| `gy` | Go to type definition |
| `<leader>ca` | Code action |
| `<leader>rn` | Rename symbol |
| `<leader>d` | Show diagnostics for line |
| `<leader>D` | Show diagnostics for buffer |
| `[d` | Go to previous diagnostic |
| `]d` | Go to next diagnostic |
| `K` | Hover documentation |
| `<leader>rs` | Restart LSP |

---

### 🔧 Git Integration

| Keys | Description |
|------|-------------|
| `<leader>gc` | Git log |
| `<leader>gs` | Git status |
| `<leader>lg` | Open LazyGit |
| `<leader>gl` | LazyGit log (cwd) |

---

### 🧱 Harpoon

| Keys | Description |
|------|-------------|
| `<leader>a` | Add file to Harpoon list |
| `<leader>h` | Toggle Harpoon quick menu |
| `<C-1>` to `<C-4>` | Jump to Harpoon slots 1–4 |

---

### ✨ Formatting

| Keys | Description |
|------|-------------|
| `<leader>mp` | Format file (via conform.nvim) |

---

### 🪄 Other Utilities

| Keys | Description |
|------|-------------|
| `<leader>cR` | Rename file |
| `]]` / `[[` | Jump to next/previous reference |
| `<leader>D` | Diagnostics picker |
| `<leader>qp` | Projects picker |

---

## 🧩 Lazy Loading Events Summary

| Plugin | Load Trigger |
|---------|---------------|
| `which-key.nvim` | `VeryLazy` event |
| `conform.nvim` | `BufReadPre`, `BufNewFile` |
| `nvim-lspconfig` | `BufReadPre`, `BufNewFile` |
| `lazydev.nvim` | Lua files only (`ft = "lua"`) |
| `harpoon` | Loaded on demand |
| `snacks.nvim` | Loaded immediately (`lazy = false`) |

---

## 🧰 Developer Notes

- **Plugin Manager:** `folke/lazy.nvim`  
- **Completion:** `blink.cmp` (new generation replacement for `nvim-cmp`)  
- **Formatter:** `conform.nvim`  
- **LSP Installer:** `mason.nvim`  
- **Finder/UI:** `snacks.nvim` replaces Telescope for most pickers  
- **Visuals:** `barbecue`, `bufferline`, `lualine`, `indent-blankline`  
- **Mini.nvim:** Handles small utilities like pairs and surround  

---

**Author:** Ryuk 🐉  
**Editor:** Neovim (Lua powered)  
**Date:** October 2025  
