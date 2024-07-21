vim.cmd("set noexpandtab")
vim.cmd("set tabstop=5")
vim.cmd("set softtabstop=5")
vim.cmd("set shiftwidth=5")
vim.cmd("colo Bark")

vim.cmd("set termguicolors")

vim.opt.scrolloff = 13
vim.wo.number = true
vim.wo.relativenumber = true

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

local plugins = {
	{ 'nvim-telescope/telescope.nvim', tag = '0.1.8', dependencies = { 'nvim-lua/plenary.nvim' } },
	{ 'nvim-treesitter/nvim-treesitter' }
}

local opts = {}

---------------------------------

require("lazy").setup(plugins, opts)

require'nvim-treesitter.configs'.setup {
	ensure_installed = { "c", "lua", "vim" },
	sync_install = true,
	auto_install = true,
	highlight = {
		enable = true,
	}
}

local builtin = require("telescope.builtin")

---------------------------------

vim.g.mapleader = " "

vim.keymap.set('n', '<leader>e', ':Explore<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>p', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.live_grep, {})

