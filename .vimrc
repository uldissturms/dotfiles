set nocompatible              " be iMproved, required
filetype off
runtime macros/matchit.vim

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" languages
" all
Plugin 'scrooloose/syntastic'
Plugin 'editorconfig/editorconfig-vim'

" javascript
Plugin 'pangloss/vim-javascript', {'for': 'javascript'}
Plugin 'walm/jshint.vim', {'for': 'javascript'}
Plugin 'eslint/eslint', {'for': 'javascript'}
Plugin 'moll/vim-node', {'for': 'javascript'}
Plugin 'elzr/vim-json'

"typescript
Plugin 'leafgarland/typescript-vim'

" productivity
Plugin 'ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-fugitive'

" formating
Plugin 'godlygeek/tabular'

" config
Plugin 'thinca/vim-localrc'

" themes
Plugin 'lifepillar/vim-solarized8'
Plugin 'rakr/vim-one'

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
colorscheme one
if (has("termguicolors"))
  set termguicolors
endif

" custom key mappings
nnoremap <TAB> <C-w>w
nnoremap <S-TAB> <C-w>W
inoremap jj <ESC> " escape with jj
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%' " expand %% to current dir
vnoremap <C-c> "+y " use os copy shortcut
let mapleader=","
map <leader>g :Ack<space>
map <leader>r :source ~/.vimrc<CR>
map <leader>w :w<CR>
map <leader>q :q<CR>

" repeat last command with the same params
nnoremap & :&&<CR>
xnoremap & :&&<CR>

" smart search
set ignorecase
set smartcase
set incsearch

" case intelligent auto complete
set infercase

set hls " highlight search results
nnoremap <space> :let @/ = ""<CR><space> " clear last used search pattern

set pastetoggle=<f5>

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor,*/node_modules,*/log,*/logs,tags
set wildmenu
set wildmode=full

set history=200 " increase command history
set laststatus=2

" ctags
nnoremap <f5> :!ctags -R<CR>

" plugins
" lint
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['standard']
let g:syntastic_javascript_standard_exec = 'standard'

" tmux
let g:tmux_navigator_save_on_switch = 1
