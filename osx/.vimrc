" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'

" plugin configuration
" using vim-plug: https://github.com/junegunn/vim-plug
call plug#begin()

Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'tmhedberg/SimpylFold'

call plug#end()

" automatic reload of .vimrc
autocmd! bufwritepost .vimrc source %

" rebind the leader to ' '
let mapleader=' '

" rebind the localleader to ' '
let maplocalleader=' '

" set key sequence wait to 3 seconds
set timeoutlen=3000

" show status bar
set laststatus=2

" show cmd
set showcmd
set showmode

" change behavour of backspace
set backspace=2

" toggle display invisible characters
set list

" set how to display invisible characters
set listchars=tab:>-,nbsp:-

" always enable mouse
set mouse=a

" show line numbers
set number

" set tabs to four spaces
set ts=4

" show a visual line under the cursor's surrent line
" set cursorline

" show the matching part of a pair for [] {} and ()
set showmatch

" copy / paste
set clipboard=unnamed

" better indentation
vnoremap < <gv
vnoremap > >g

" NerdTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"
