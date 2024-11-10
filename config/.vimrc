syntax enable
filetype plugin indent on

autocmd BufNewFile,BufRead *.rs set filetype=rust
" Add numbers to each line on the left-hand side.
set number

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=600

" Enable auto completion menu after pressing TAB.
set wildmenu
"
" " Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest
"
" " There are certain files that we would never want to edit with Vim.
" " Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx


" PLUGINS ---------------------------------------------------------------- {{{
"
" " Plugin code goes here.
"
call plug#begin('~/.vim/plugged')
"
"
Plug 'junegunn/fzf'
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'rodjek/vim-puppet'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'editorconfig/editorconfig-vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'tpope/vim-surround'
Plug 'rust-lang/rust.vim'
Plug 'dense-analysis/ale'
Plug 'scrooloose/syntastic'
Plug 'altercation/vim-colors-solarized'
Plug 'Valloric/YouCompleteMe'
Plug 'rose-pine/vim'
Plug 'christoomey/vim-tmux-navigator'
"
"
"
call plug#end()
""rust configurations
let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0
let g:ale_linters = {
\  'rust': ['analyzer'],
\}

let g:ale_fixers = { 'rust': ['rustfmt', 'trim_whitespace', 'remove_trailing_lines'] }

" Optional, configure as-you-type completions
set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled = 1

nnoremap <C-LeftMouse> :ALEGoToDefinition<CR>
" " }}}
"
"
" " MAPPINGS ---------------------------------------------------------------
" {{{
"
" " Mappings code goes here.
"
" " }}}
"
"
" " VIMSCRIPT --------------------------------------------------------------
" {{{
"
" " This will enable code folding.
" " Use the marker method of folding.
" augroup filetype_vim
"     autocmd!
"         autocmd FileType vim setlocal foldmethod=marker
"         augroup END
"
"         " More Vimscripts code goes here.
"
"         " }}}
"
"
"         " STATUS LINE
"         ------------------------------------------------------------ {{{
"
"         " Status bar code goes here.
"
"         " }}}
