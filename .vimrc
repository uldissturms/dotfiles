set nocompatible              " be iMproved, required
filetype off
runtime macros/matchit.vim

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" languages
" all
Plugin 'scrooloose/syntastic'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'w0rp/ale'
Plugin 'valloric/youcompleteme'

" javascript
Plugin 'pangloss/vim-javascript', {'for': 'javascript'}
" Plugin 'walm/jshint.vim', {'for': 'javascript'}
Plugin 'eslint/eslint', {'for': 'javascript'}
Plugin 'moll/vim-node', {'for': 'javascript'}
Plugin 'elzr/vim-json'

" typescript
Plugin 'leafgarland/typescript-vim', {'for': 'typescript'}
Plugin 'quramy/tsuquyomi', {'for': 'typescript'}

" haskell
Plugin 'neovimhaskell/haskell-vim', {'for': 'haskell'}

" productivity
Plugin 'junegunn/fzf.vim'
Plugin 'mileszs/ack.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'vim-utils/vim-husk'

"snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" formating
Plugin 'godlygeek/tabular'

" config
Plugin 'thinca/vim-localrc'

" themes
Plugin 'rakr/vim-one'

" metrics
Plugin 'wakatime/vim-wakatime'

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
set completeopt-=preview " disable preview window

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
" safely set colorscheme
try
  colorscheme one
catch
endtry
if (has("termguicolors"))
  set termguicolors
endif

hi Normal guibg=black

" custom key mappings

" fuzzy-finder
nnoremap <C-p> :Files<CR>
nnoremap <C-b> :Buffers<CR>
nnoremap <leader>ch :History:<CR>
nnoremap <leader>sh :History/<CR>

" navigation

" windows
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" last two files
nnoremap <Leader><Leader> <C-^>

" general
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

map <leader>pj :%!jq '.'<CR>
map <leader>px :%!xmllint --format -<CR>

" open new split panes to right and bottom
set splitbelow
set splitright

" smart search
set ignorecase
set smartcase
set incsearch

" case intelligent auto complete
set infercase

set hls " highlight search results
nnoremap <space> :let @/ = ""<CR><space> " clear last used search pattern

set pastetoggle=<f5>

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor,*/node_modules,*/log,*/logs,tags,*/.nyc_output,*/lcov-report,*/.cache-loader,*/.webpack,*/.serverless
set wildmenu
set wildmode=full

set history=200 " increase command history
set laststatus=2

" folds
set foldmethod=syntax
set foldlevel=20

" ctags
nnoremap <f5> :!ctags -R<CR>

" plugins

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" syntastic
" disable linting
let g:syntastic_check_on_open = 0
let g:syntastic_javascript_checkers = []
let g:syntastic_typescript_checkers = []

" typecript
" let g:tsuquyomi_disable_quickfix = 1

" haskell
let g:haskell_indent_case_alternative = 1
let g:haskell_indent_in = 0
let g:haskell_indent_before_where = 2
let g:haskell_indent_after_bare_where = 2

" ale
let g:ale_linters = {
  \'javascript': ['standard'],
  \'typescript': ['tsuquyomi', 'tslint']
\}
let g:ale_fixers = {
  \'*': ['remove_trailing_lines', 'trim_whitespace'],
  \'javascript': ['standard']
\}
let g:ale_lint_on_text_changed = 'never'
" let g:ale_set_loclist = 0
" let g:ale_set_quickfix = 1

" youcompleteme
let g:ycm_key_list_select_completion = []
