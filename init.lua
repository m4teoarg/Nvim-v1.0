vim.g.base46_cache = vim.fn.stdpath('data') .. '/base46_cache/'

vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ import = "plugins" })

require("options")
-- require("nvconfig.lua")
-- vim.cmd "colorscheme nightly"

local integrations = require("nvconfig").base46.integrations

for _, name in ipairs(integrations) do
  dofile(vim.g.base46_cache .. name)
end
