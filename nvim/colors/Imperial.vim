" Name:		Bloom
" Author:	bain

hi clear
let g:colors_name = 'Bloom'
let s:t_Co = $t_Co

"if (has('termguicolors') && &termguicolors) || has('gui_running')
"	for i in range(g:terminal_ansi_colors->len())
"		let g:terminal_color_{i} = g:terminal_ansi_colors[i]
"	endfor
"endif


hi Normal		guifg=#f6e7cb	guibg=#111111	gui=none
hi Comment		guifg=#417137					gui=italic
hi Type			guifg=#4a4d59					gui=none
hi Keyword		guifg=#4a4d59
hi Statement	guifg=#5a5d69					gui=bold,italic
hi Constant		guifg=#e391b9
hi Identifier	guifg=#7f6cad
hi String		guifg=#e391b9
hi @variable	guifg=#7d8ca1
hi Function		guifg=#bddaf0
hi Special		guifg=#7f6cad					gui=bold,italic
hi Directory	guifg=#5a5d69
hi Search		guifg=#000000	guibg=#ab9574
hi ModeMsg		guifg=#111111

hi @spell.markdown	guifg=#7d8ca1

hi link @function.c Function
hi link @function.call.c Function
hi link @constant.builtin.c Identifier

hi link @keyword.import.zig Special
hi link @module.zig @variable
hi link @operator.zig Type
hi link @punctuation Type

hi @keyword.import.c	guifg=#912F40

hi ColorColumn	guibg=#7d8ca1
hi EndOfBuffer	guifg=#111111
hi StatusLine	guibg=#080808	gui=bold
hi StatusLineNC	guifg=#4d5359

hi LineNrAbove	guifg=#4D5359	guibg=#090909
hi LineNr		guifg=#F26CA7	guibg=#090909
hi link LineNrBelow LineNrAbove
