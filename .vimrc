" VUNDLE
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Bundle 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'rking/ag.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" POWERLINE
set laststatus=2
 let g:airline_powerline_fonts = 1
"let g:airline#extensions#tmuxline#enabled = 0
let g:airline_theme='serene'
function! AirlineInit()
	let g:airline_section_d = airline#section#create_left(['hunks'])
endfunction
autocmd VimEnter * call AirlineInit()

" VIM
syntax on
set number
set ruler
set cursorline
set ttyfast
set lazyredraw
set showcmd
set incsearch
set hlsearch
set ttimeout
set ttimeoutlen=20
set notimeout
set smartcase
set ignorecase

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

"highlight vertical column of cursor
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline
set cursorline

" Leader Mappings
map <Space> <leader>
map <Leader>w :update<CR>
map <Leader>q :qall<CR>
map <Leader>gs :Gstatus<CR>
map <Leader>gc :Gcommit<CR>
map <Leader>gp :Gpush<CR>

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" THEME
"colorscheme koehler
syntax enable
if !has("gui_running")
	let g:solarized_termtrans=1
	let g:solarized_termcolors=256
endif
set background=dark
colorscheme solarized

" NERD TREE
"autocmd vimenter * NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
map <F9> :NERDTreeFind<CR>

" Other
set encoding=utf-8
set t_Co=256
"set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

"if has("gui_running")
"	let s:uname = system("uname")
"	if s:uname == "Darwin\n"
"		set guifont=Inconsolata\ for\ Powerline:h15
"	endif
"endif
