" VUNDLE
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

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
Plugin 'scrooloose/syntastic' 
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'pangloss/vim-javascript'
Plugin 'keith/swift.vim'
Plugin 'mattn/emmet-vim'
Plugin 'gregsexton/MatchTag'
Plugin 'othree/html5.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'elzr/vim-json'
Plugin 'moll/vim-node'
Plugin 'groenewege/vim-less'
Plugin 'ap/vim-css-color'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'tpope/vim-markdown'
Plugin 'mxw/vim-jsx'

call vundle#end()
filetype plugin indent on

" POWERLINE
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='badwolf'
function! AirlineInit()
	let g:airline_section_d = airline#section#create_left(['hunks'])
endfunction
autocmd VimEnter * call AirlineInit()

" VIM
syntax on
set clipboard=unnamed

"highlight vertical column of cursor
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline

set number
set ruler
set cursorline
set ttyfast
"set lazyredraw
set showcmd
set incsearch
set hlsearch
set ttimeout
set ttimeoutlen=20
set notimeout
set smartcase
set ignorecase
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " No comments on copy/paste insert

" Tab control
set noexpandtab " insert tabs rather than spaces for <Tab>
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4 " the visible width of tabs
set softtabstop=4 " edit as if the tabs are 4 characters wide
set shiftwidth=4 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth'

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

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
let NERDTreeShowHidden=1

" CtrlP
let g:ctrlp_show_hidden = 1
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_dotfiles=1
" only show files that are not ignored by git
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
" search the nearest ancestor that contains .git, .hg, .svn
let g:ctrlp_working_path_mode = 2

" YOUCOMPLETEME
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

" SYNTASTIC
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" OTHER
set encoding=utf-8
set t_Co=256
set term=xterm-256color
set termencoding=utf-8
