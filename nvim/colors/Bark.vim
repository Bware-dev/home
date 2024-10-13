" Name:		Bark
" Author:		Bain

"	#f5e9d0	Off-Cream
"	#5e5e5e	Mid Grey (this)
"	#ab9574	Khaki
"	#42593f	Dark Green
"	#71816d	Washed-Out Green
"	#cfbfa3	Skin
"	#935a49	red-brown

hi clear
let g:colors_name = 'bark'
let s:t_co = $t_co

if (has('termguicolors') && &termguicolors) || has('gui_running')
	for i in range(g:terminal_ansi_colors->len())
		let g:terminal_color_{i} = g:terminal_ansi_colors[i]
	endfor
endif

hi normal			guifg=#f6e7cb	guibg=#151313	gui=none
hi comment			guifg=#5e5e5e						gui=none
hi type				guifg=#ab9574						gui=none
hi special			guifg=#42593f						gui=bold
hi constant			guifg=#71816d
hi identifier		guifg=#cfbfa3
hi function			guifg=#a1624f
hi statement		guifg=#42593f						gui=italic

hi preproc			guifg=#f29b6c

hi nontext			guifg=#5e5e5e
hi errormsg			guifg=#f6e7cb	guibg=#935a49
hi search			guibg=#e9c46a
hi colorcolumn		guibg=#273b25

"---------------------------------"

hi endofbuffer		guifg=#111111
hi statusline							guibg=#080808	gui=bold
hi statuslinenc	guifg=#080808	guibg=#080808

hi linenr			guifg=#f26ca7	guibg=#090909
hi linenrabove		guifg=#545454	guibg=#090909
hi link linenrbelow linenrabove

hi vertsplit		guifg=#151313
hi directory		guifg=#cfbfa3
hi matchparen		guifg=#151313	guibg=#516e4d

hi Pmenu									guibg=#111111
hi SignColumn							guibg=#111111

hi TodoSignTODO						guibg=#111111
hi TodoSignHACK						guibg=#111111
hi TodoSignNOTE						guibg=#111111
hi TodoSignPERF						guibg=#111111
hi TodoSignTEST						guibg=#111111
hi TodoSignWARN						guibg=#111111
hi TodoSignFIX						guibg=#111111

"---------------------------------"

hi link @function.c function
hi link @function.call.c function
hi link @constant.builtin.c identifier

hi link title search
