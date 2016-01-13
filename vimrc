set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/

" Plugins
" --------------------------- 
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'tpope/vim-sensible' " Defaults for vim

" TOP
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree' " Tree files view
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'godlygeek/tabular'

" Others
Plugin 'mbriggs/mark.vim'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'mattn/emmet-vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'qstrahl/vim-matchmaker'

" Color themes
Plugin 'morhetz/gruvbox'
Plugin 'altercation/vim-colors-solarized'

" Others Diego
Plugin 'othree/html5-syntax.vim'

call vundle#end() " required
filetype plugin indent on " required


" Vim Conf
" ---------------------------
let mapleader = ","
let maplocalleader = ","

" Scheme
set background=dark
let g:gruvbox_contrast_dark='hard'
set t_Co=256
set encoding=utf8
colorscheme solarized

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

set showmatch
set number
set lines=60
set columns=120
set colorcolumn=80


" Plugins Conf
" ---------------------------
map <F12> :NERDTreeToggle<CR>
let g:vim_markdown_folding_disabled=1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_python_checkers=['flake8']

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_html_tidy_ignore_errors = [
    \  " proprietary attribute \"ng-",
	\  '<html> attribute "lang" lacks value',
	\  '<a> attribute "href" lacks value',
	\  'trimming empty <'
	\ ]

let g:matchmaker_enable_startup = 1

set guifont=Menlo\ for\ Powerline
let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts=1
if has ('gui_running')
    set background=dark
else
    colorscheme gruvbox
endif
