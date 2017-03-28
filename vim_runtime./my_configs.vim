Bundle 'Valloric/YouCompleteMe'     

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'

let pyhton_highlight_all=1
syntax on

Plugin 'lervag/vimtex'

call togglebg#map("<F5>")
