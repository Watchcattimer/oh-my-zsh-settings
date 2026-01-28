vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim")

-- Set custom leaders
require("user.options")
require("user.plugins")
require("user.keymaps")
