vim.opt.number=true
vim.opt.relativenumber=true
vim.opt.termguicolors=true

--=====LAZY====--
local lazypath = vim.fn.stdpath("data").."/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
 vim.fn.system({
	 "git",
	 "clone",
	 "--filter=blob:none",
	 "https://github.com/folke/lazy.nvim.git",
	 lazypath,
 })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

-- Transparent background
vim.cmd([[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NormalNC guibg=NONE ctermbg=NONE
  highlight EndOfBuffer guibg=NONE ctermbg=NONE
]])

