execute pathogen#infect()
filetype plugin on

let mapleader=","

"DELIMITMATE
"let delimitMate_expand_cr = 1
filetype indent plugin on

"VIM-SLIME
let g:slime_target = "tmux"

"VIM-JAVASCRIPT(look in their readme for concealing chars if becomes a problem)
" let g:javascript_plugin_jsdoc = 1
" let g:javascript_plugin_ngdoc = 1
" let g:javascript_plugin_flow = 1
"
"NERD COMMENTOR
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1


"CNTRL P- FUZZY FILE SEARCH
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"DEFAULT TAB SPACING
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab smartindent
"LINE WRAPPING OPTIONS
set wrap
set textwidth=100
set formatoptions=qrn1
set colorcolumn=100

"SET LINE NUMBERS TO RELATIVE(except current line)
set relativenumber
set number

"LIGHTLINE SETTINGS
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }

" SYNTASTIC
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

" DEFAULT NERDTREE WINDOW SIZE
let g:NERDTreeWinSize=22

" CNTRL-N TO TOGGLE NERDTree
map <C-n> :NERDTreeToggle<CR>

" SOLARIZED COLOR SCHEME
 syntax enable
 set background=dark
 colorscheme solarized
