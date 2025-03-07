local colors = {
	green	= "#608b4e",
	blue	= "#569cd6",
	pink	= "#c586c0",
	red		= "#c22b41",
	light	= "#222222",
	dark	= "#131313",
	white	= "#d4d4d4",
}

local theme = {
	normal = {
		a = { fg = colors.dark, bg = colors.blue },
		b = { fg = colors.blue, bg = colors.light, gui = 'bold' },
		c = { fg = colors.white, bg = colors.dark },
	},
	insert = {
		a = { fg = colors.dark, bg = colors.green },
		b = { fg = colors.green, bg = colors.light, gui = 'bold' },
		c = { fg = colors.white, bg = colors.dark },
	},
	visual = {
		a = { fg = colors.dark, bg = colors.pink },
		b = { fg = colors.pink, bg = colors.light, gui = 'bold' },
		c = { fg = colors.white, bg = colors.dark },
	},
	replace = {
		a = { fg = colors.dark, bg = colors.red },
		b = { fg = colors.red, bg = colors.light, gui = 'bold' },
		c = { fg = colors.white, bg = colors.dark },
	},
	inactive = {
		a = { fg = colors.dark, bg = colors.blue },
		b = { fg = colors.blue, bg = colors.light },
	},
}

return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },

	config = function()
		require('lualine').setup({
			options = {
				theme = theme,
				component_separators = { left = '', right = ' | '},
				sections = {
					lualine_a = { 'mode' },
					lualine_b = {
						{'branch', icon = ''},
						{'diff',
							symbols = {
								added = ' ',
								modified = ' ',
								removed = ' ',
							},
							diff_color = {
								added = 'lualine_b_insert',
								modified = 'lualine_b_visual',
								removed = 'lualine_b_replace',
							}},
						'diagnostics',
					}, lualine_c = { 'filename' },
					lualine_x = { 'filetype' },
					lualine_y = { 'filesize' },
					lualine_z = { 'location' },
				},
				inactive_sections = {
					lualine_a = {},
					lualine_b = {},
					lualine_c = { 'filename' },
					lualine_x = { 'filetype' },
					lualine_y = { 'filesize' },
					lualine_z = {},
				},
			}
		})
	end
}
