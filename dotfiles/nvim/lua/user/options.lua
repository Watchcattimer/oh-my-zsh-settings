-- Set leader key
vim.g.mapleader = " "

-- General settings
vim.opt.number = true             -- Show line numbers
vim.opt.relativenumber = true     -- Relative line numbers
vim.opt.cursorline = true         -- Highlight current line
vim.opt.wrap = false              -- No line wrap
vim.opt.scrolloff = 8             -- Keep 8 lines visible when scrolling
vim.opt.signcolumn = "yes"        -- Always show sign column

-- Tabs and indentation
vim.opt.expandtab = true          -- Use spaces instead of tabs
vim.opt.shiftwidth = 4            -- Indent size
vim.opt.tabstop = 4
vim.opt.smartindent = true

-- Searching
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true

-- Appearance
vim.opt.termguicolors = true      -- Enable 24-bit colors
vim.opt.background = "dark"       -- Dark theme

