vim.opt.number = true -- line number
vim.opt.relativenumber = true -- rnu
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.termguicolors = true -- 24 bit colors
vim.opt.signcolumn = "yes"
vim.opt.hlsearch = true -- highlight search
vim.opt.incsearch = true

vim.opt.updatetime = 400 -- test this explosive thing

vim.o.mouse = "a" -- why???

vim.opt.selection = "inclusive" -- include last char in V
vim.opt.clipboard:append("unnamedplus")
vim.opt.modifiable = true
vim.opt.encoding = "UTF-8"
vim.opt.undofile = true

vim.opt.scrolloff = 10
