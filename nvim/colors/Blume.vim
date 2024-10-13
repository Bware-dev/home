" Name:		Bloom
" Author:		BOS

hi clear
let g:colors_name = 'Bloom'
let s:t_Co = $t_Co

if (has('termguicolors') && &termguicolors) || has('gui_running')
	for i in range(g:terminal_ansi_colors->len())
		let g:terminal_color_{i} = g:terminal_ansi_colors[i]
	endfor
endif


hi Normal			guifg=#F6E7CB	guibg=#111111	gui=none
hi Comment		guifg=#417137				gui=italic
hi Type			guifg=#4A4D59				gui=none
hi Statement		guifg=#4a4d59				gui=bold,italic
hi Constant		guifg=#E391B9
hi Identifier		guifg=#7F6CAD
hi Function		guifg=#7D8CA1
hi Special		guifg=#5a5d59

hi link @function.c Function
hi link @function.call.c Function
hi link @constant.builtin.c Identifier

hi @keyword.import.c	guifg=#912F40

hi EndOfBuffer		guifg=#111111
hi StatusLine		guibg=#080808	gui=bold
hi StatusLineNC	guifg=#4d5359

hi LineNrAbove		guifg=#4D5359	guibg=#090909
hi LineNr			guifg=#F26CA7	guibg=#090909
hi link LineNrBelow LineNrAbove
