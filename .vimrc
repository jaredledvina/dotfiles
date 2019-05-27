" Plug managed Vim plugins
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'airblade/vim-gitgutter'
Plug 'pearofducks/ansible-vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'vim-ruby/vim-ruby'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
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

" Use Ctrl+z to use fzf for search
nnoremap <silent> <C-z> :FZF<CR>

" Apparently I'm supposed to be using ctags
set tags=tags

" open/close nerdtree window
map - :NERDTreeToggle<CR>
" Leader + r to jump to the nerdtree window from any other window
map <leader>r :NERDTreeFind<cr>
autocmd BufWinEnter * NERDTreeFind
" ] inside any open file in vim will jump to the nerdtree and highlight where that file is -> very useful when you have multiple files open at once
map ] :NERDTreeFind<CR>
" Open nerdtree if vim was opened without file
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Get the 2-space YAML as the default when hit carriage return after the colon
autocmd FileType yaml setlocal expandtab shiftwidth=2 tabstop=2
" Get the 2-space Ruby as the default when hit carriage return after the colon
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2
" Get the 4-space Python as the default when hit carriage return after the colon
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4
