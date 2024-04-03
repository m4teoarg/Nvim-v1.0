local opt = vim.opt

-- general
opt.number = true
opt.sidescrolloff = 5

opt.hlsearch = true
opt.incsearch = true

opt.mouse:append("a")
opt.clipboard:append("unnamedplus")
opt.cursorline = false

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.ignorecase = true
opt.smartcase = true

opt.swapfile = false
opt.autoread = true
vim.bo.autoread = true
