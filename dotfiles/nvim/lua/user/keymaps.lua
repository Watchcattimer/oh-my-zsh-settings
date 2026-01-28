-- ~/.config/nvim/lua/user/keymaps.lua
local wk = require("which-key")

-- Example keymaps
vim.g.mapleader = " "  -- leader key
vim.g.maplocalleader = "\\" -- local leader

wk.register({
  -- File operations
  ["<leader>f"] = {
    name = "File",
    f = { "<cmd>Telescope find_files<CR>", "Find file" },
    r = { "<cmd>Telescope oldfiles<CR>", "Recent files" },
    s = { "<cmd>w<CR>", "Save file" },
    S = { "<cmd>w!<CR>", "Force save" },
    q = { "<cmd>q<CR>", "Quit" },
    x = { "<cmd>xa<CR>", "Save & Quit all" },
  },

  -- Buffer operations
  ["<leader>b"] = {
    name = "Buffer",
    n = { "<cmd>bn<CR>", "Next buffer" },
    p = { "<cmd>bp<CR>", "Previous buffer" },
    d = { "<cmd>bd<CR>", "Delete buffer" },
    l = { "<cmd>ls<CR>", "List buffers" },
  },

  -- Window / splits
  ["<leader>w"] = {
    name = "Window",
    v = { "<cmd>vsplit<CR>", "Vertical split" },
    h = { "<cmd>split<CR>", "Horizontal split" },
    s = { "<C-w>=", "Equalize splits" },
    x = { "<cmd>close<CR>", "Close split" },
  },

  -- Terminal
  ["<leader>t"] = {
    name = "Terminal",
    t = { "<cmd>ToggleTerm<CR>", "Toggle terminal" },
    n = { "<cmd>terminal<CR>", "New terminal" },
  },

  -- Git
  ["<leader>g"] = {
    name = "Git",
    s = { "<cmd>Git status<CR>", "Status" },
    c = { "<cmd>Git commit<CR>", "Commit" },
    p = { "<cmd>Git push<CR>", "Push" },
    l = { "<cmd>Git log<CR>", "Log" },
  },

  -- LSP
  ["<leader>l"] = {
    name = "LSP",
    r = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename symbol" },
    a = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code action" },
    d = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Go to definition" },
    h = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Hover info" },
    f = { "<cmd>lua vim.lsp.buf.format({ async = true })<CR>", "Format file" },
  },

  -- Telescope (fuzzy finder)
  ["<leader>s"] = {
    name = "Search",
    f = { "<cmd>Telescope find_files<CR>", "Find files" },
    g = { "<cmd>Telescope live_grep<CR>", "Live grep" },
    b = { "<cmd>Telescope buffers<CR>", "Buffers" },
    h = { "<cmd>Telescope help_tags<CR>", "Help tags" },
  },

  -- Help
  ["<leader>h"] = {
    name = "Help",
    h = { "<cmd>help<CR>", "Help" },
    k = { "<cmd>help key-notation<CR>", "Key notation" },
  },

  -- Manual which-key trigger
  ["<leader>?"] = { "<cmd>WhichKey<CR>", "Show key bindings" },
}, { prefix = "" })

