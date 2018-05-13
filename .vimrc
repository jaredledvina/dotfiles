" Plug managed Vim plugins
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'airblade/vim-gitgutter'
call plug#end()

" Git Gutter config
" Always show git gutter
let g:gitgutter_sign_column_always = 1
