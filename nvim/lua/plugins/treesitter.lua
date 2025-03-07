return {
	'nvim-treesitter/nvim-treesitter',
	build = ":TSUpddate",
	config = function()
		require'nvim-treesitter.configs'.setup({
			ensure_installed = { "c", "lua", "vim", "rust", "zig" },
			sync_install = true,
			auto_install = true,
			highlight = { enable = true, },
			indent =  { enable = true, },
		})
	end
}
