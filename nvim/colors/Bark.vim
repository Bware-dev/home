" Name:		Bark
" Author:		BOS

hi clear
let g:colors_name = 'Bark'
let s:t_Co = $t_Co

if (has('termguicolors') && &termguicolors) || has('gui_running')
  let g:terminal_ansi_colors = ['#000000', '#cd0000', '#00cd00', '#cdcd00', '#0000ee', '#cd00cd', '#00cdcd', '#e5e5e5', '#7f7f7f', '#ff0000', '#00ff00', '#ffff00', '#5c5cff', '#ff00ff', '#00ffff', '#ffffff']
  " Nvim uses g:terminal_color_{0-15} instead
  for i in range(g:terminal_ansi_colors->len())
    let g:terminal_color_{i} = g:terminal_ansi_colors[i]
  endfor
endif

hi Normal			guifg=#F6E7CB	guibg=#151313	gui=none
hi Comment		guifg=#4e4e4e				gui=none
hi Type			guifg=#AB9574				gui=none
hi Statement		guifg=#3B5138				gui=bold,italic
hi Constant		guifg=#71816D
hi Identifier		guifg=#CFBFA3
hi Function		guifg=#8A5849
hi Special		guifg=#42593F

hi link @function.c Function
hi link @function.call.c Function
hi link @constant.builtin.c Identifier

"---------------------------------"

hi EndOfBuffer		guifg=#111111
hi StatusLine					guibg=#080808	gui=bold
hi StatusLineNC	guifg=#080808	guibg=#080808

hi LineNr			guifg=#F26CA7	guibg=#090909
hi LineNrAbove		guifg=#545454	guibg=#090909
hi link LineNrBelow LineNrAbove

hi VertSplit		guifg=#151313
hi Directory		guifg=#cfbfa3
hi MatchParen		guifg=#151313	guibg=#516e4d
