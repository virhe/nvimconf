-- Leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Global
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true
vim.opt.cursorline = true

vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.updatetime = 300

vim.opt.undofile = true

-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Lua
vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    vim.bo.tabstop = 2
    vim.bo.shiftwidth = 2
    vim.bo.softtabstop = 2
  end,
})
