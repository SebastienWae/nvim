vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt

opt.showmode = false
opt.laststatus = 0
opt.termguicolors = true
opt.relativenumber = true
opt.number = true
opt.smartindent = true
opt.expandtab = true
opt.tabstop = 2
opt.shiftround = true
opt.shiftwidth = 2
opt.cursorline = true
opt.ignorecase = true
opt.list = true
opt.listchars:append "space:⋅"
opt.listchars:append "eol:↴"
opt.splitbelow = true
opt.splitright = true
opt.wrap = false
opt.title = true
opt.colorcolumn = "80"
opt.background = "light"
opt.signcolumn = "yes"
