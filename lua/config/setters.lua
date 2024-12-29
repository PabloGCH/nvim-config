-- SETTERS
-- ========================

vim.o.number = true
vim.o.cursorline = true

vim.o.sidescroll = 1
vim.o.breakindent = true

vim.o.encoding = "UTF-8"
vim.o.clipboard = "unnamedplus"
vim.o.showtabline = 2

vim.o.fillchars = "vert: "

vim.o.tabstop = 2
vim.o.shiftwidth = 2

vim.o.wrap = true
vim.o.autoindent = true

vim.o.foldmethod = "indent"
vim.o.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.o.foldlevel= 99
