vim.cmd("colo Imperial")
vim.g.mapleader = " "
vim.opt.termguicolors = true

vim.cmd("set noexpandtab")
vim.opt.scrolloff = 13
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true

vim.opt.updatetime = 90

vim.opt.colorcolumn = "90"

--------------------------------

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

---------------------------------

require("lazy").setup("plugins")

---------------------------------

vim.keymap.set("n", "<leader>o", ":Oil<CR>", {})

-- Shift selection
vim.keymap.set("v", "<S-UP>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<S-DOWN>", ":m '>+1<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Indent
vim.keymap.set("n", ">", ">>")
vim.keymap.set("n", "<", "<<")

-- Copy to clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Mass replace current word
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- Switch tabs
vim.keymap.set("n", "<leader>b", ":BufferLinePick<CR>")
vim.keymap.set("n", "<C-b>", ":bd<CR>")

-- TODO keymaps
vim.keymap.set("n", "]t", function()
  require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "[t", function()
  require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })

vim.keymap.set("n", "<leader>t", ":TodoTelescope<CR>")
