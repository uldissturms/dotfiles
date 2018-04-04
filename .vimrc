set nocompatible              " be iMproved, required
filetype plugin on
runtime macros/matchit.vim

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ctrlp.vim'
Plugin 'elzr/vim-json'
Plugin 'scrooloose/syntastic'
Plugin 'eslint/eslint'
Plugin 'walm/jshint.vim'
Plugin 'mileszs/ack.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'thinca/vim-localrc'
Plugin 'pangloss/vim-javascript'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-surround'

call vundle#end()            " required
filetype plugin indent on    " required

" indentation stuff
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" quirks
set backspace=2 " make backspace work like most other apps

set complete+=k " dictionary autocomplete

set number " view line numbers
set ruler " view current position
highlight LineNr ctermfg=grey

set listchars=tab:▸▸,trail:~ " nicer whitespace chars
set list " show whitespace
set mouse=nv " allow mouse

" skip backup & swap files
set nobackup
set nowritebackup
set noswapfile

" save readonly files with sudo using w!!
cmap w!! %!sudo tee > /dev/null %

set exrc " allow per folder configs
set secure " disallow dangerous commands in per folder configs

syntax enable
set background=dark
colorscheme solarized

" custom key mappings
nnoremap <TAB> <C-w>w
nnoremap <S-TAB> <C-w>W
inoremap jj <ESC> " escape with jj
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%' " expand %% to current dir
vnoremap <C-c> "+y " use os copy shortcut
let mapleader=","
" seach using regexes
nnoremap / /\v
vnoremap / /\v

set hls " highlight search results
nnoremap <space> :let @/ = ""<CR><space> " clear last used search pattern

set ignorecase
set smartcase

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor,*/node_modules
set wildmenu
set wildmode=full

set history=200 " increase command history


" plugins
" lint
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['standard']
let g:syntastic_javascript_standard_exec = 'semistandard'

set laststatus=2

" tmux
let g:tmux_navigator_save_on_switch = 1
