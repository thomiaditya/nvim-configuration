local opt = vim.opt

-- User Interface
opt.number = true
opt.relativenumber = true
opt.mouse = "a"
opt.syntax = "on"
opt.termguicolors = true
vim.cmd "colorscheme tokyonight"

-- Indentation
opt.expandtab = true
opt.shiftwidth = 2
opt.softtabstop = 2
opt.tabstop = 2
opt.autoindent = true

vim.cmd [[filetype plugin indent on]]

-- Searching
opt.hlsearch = true
opt.ignorecase = true
opt.title = true

opt.undofile = true
opt.undodir = "/home/thomiaditya/.vimundo/"

-- Change leader to space
vim.g.mapleader = " "
