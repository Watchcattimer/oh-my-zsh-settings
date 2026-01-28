-- Bootstrap lazy.nvim if not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Plugins
require("lazy").setup({
  -- Theme
  { "folke/tokyonight.nvim", lazy = false, priority = 1000, config = function()
      vim.cmd([[colorscheme tokyonight]])
    end
  },

  -- Statusline
  { "nvim-lualine/lualine.nvim", config = function()
      require("lualine").setup({
        options = { theme = "tokyonight" }
      })
    end
  },

  -- File explorer
  { "nvim-tree/nvim-tree.lua", config = function()
      require("nvim-tree").setup()
    end
  },

  -- Fuzzy finder
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },

  -- Treesitter for syntax highlighting
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- which-key.nvim
  {
    "folke/which-key.nvim",
    event = "VeryLazy",  -- lazy-load after startup
    config = function()
      require("which-key").setup({
        plugins = {
          marks = true,         -- show marks
          registers = true,     -- show registers
          spelling = { enabled = true },
        },
        icons = { breadcrumb = "", separator = ":", group = "+" },
        window = { border = "rounded", position = "bottom", padding = { 0, 0, 0, 0 } },
      })
    end
  },

  -- Add your other plugins here
})

