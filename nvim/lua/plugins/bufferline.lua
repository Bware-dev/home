return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function()
		require("bufferline").setup({
			options = {
				indicator = {
					style = 'none',
				},
				separator_style = "slant",
			}
		})
	end
}
