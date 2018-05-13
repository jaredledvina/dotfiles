" Plug managed Vim plugins
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'airblade/vim-gitgutter'
Plug 'pearofducks/ansible-vim'
call plug#end()

" Git Gutter config
" Always show the sign column for Git Gutter
set signcolumn=yes

" Force a fast tty connection
set ttyfast

" Show 80 character column if we can
if exists('+colorcolumn')
    set colorcolumn=81
endif

" Show line number and relative numbers
set number
set relativenumber

" Use F1 to toggle line numbers 
nmap <F1> :set number! relativenumber! relativenumber?<cr>
imap <F1> <C-O>:set number! relativenumber! relativenumber?<cr>
