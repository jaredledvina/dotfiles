" Plug managed Vim plugins
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'airblade/vim-gitgutter'
Plug 'pearofducks/ansible-vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'pangloss/vim-javascript'
call plug#end()

" Git Gutter config
" Always show the sign column for Git Gutter
set signcolumn=yes

" vim-better-whitespace config
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

" pearofducks/ansible-vim
let g:ansible_unindent_after_newline = 1

" Force a fast tty connection
set ttyfast

" Show 80 character column if we can
if exists('+colorcolumn')
    set colorcolumn=81
endif

" Show line number and relative numbers
set number
set relativenumber

" Offset scroll by 10 lines
set scrolloff=10

" Use F1 to toggle line numbers
nmap <F1> :set number! relativenumber! relativenumber?<cr>
imap <F1> <C-O>:set number! relativenumber! relativenumber?<cr>

" Get the 2-space YAML as the default when hit carriage return after the colon
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
