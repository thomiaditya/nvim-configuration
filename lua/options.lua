local opt = vim.opt

-- User Interface
opt.number = true
opt.relativenumber = true
opt.mouse = "a"
opt.syntax = "on"
opt.termguicolors = true
vim.cmd "colorscheme dracula"

-- Indentation
opt.autoindent = true
opt.shiftwidth = 2
opt.tabstop = 2

-- Searching
opt.hlsearch = true
opt.ignorecase = true
opt.title = true
