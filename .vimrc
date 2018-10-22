set nocompatible

runtime! debian.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'gko/vim-coloresque'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'kien/ctrlp.vim'
" Plugin 'tpope/vim-fugitive'
Plugin 'posva/vim-vue'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
Plugin 'mattn/emmet-vim'
" Plugin 'editorconfig/editorconfig-vim'
" Plugin 'junegunn/fzf'
" Plugin 'junegunn/fzf.vim'
Plugin 'scrooloose/nerdtree'
" Plugin 'valloric/youcompleteme'
" Plugin 'vim-latex/vim-latex'
" Plugin 'xuhdev/vim-latex-live-preview'

call vundle#end()
set laststatus=2

let mapleader=","
let g:livepreview_previewer = 'atril'
set background=dark
filetype plugin indent on

set showcmd
set showmatch
set ignorecase
set smartcase
set incsearch
set hlsearch

" Show numbers
set nu
set linebreak
set wrap
set wildmenu
set lazyredraw

" Show relative numbers
set rnu

" Tabbing and Spaces
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent

set backspace=indent,eol,start
set nostartofline
set visualbell
set confirm
set mouse=a
autocmd FileType vue syntax sync fromstart
autocmd BufNewFile,BufRead *.vue set ft=vue
let g:vue_disable_pre_processors=1

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

set t_Co=256

let g:airline_theme='wombat'
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  " unicode symbols
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.crypt = '🔒'
  let g:airline_symbols.linenr = '☰'
  let g:airline_symbols.linenr = '␊'
  let g:airline_symbols.linenr = '␤'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.maxlinenr = ''
  let g:airline_symbols.maxlinenr = '㏑'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.spell = 'Ꞩ'
  let g:airline_symbols.notexists = '∄'
  let g:airline_symbols.whitespace = 'Ξ'

  " powerline symbols
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = '☰'
  let g:airline_symbols.maxlinenr = ''

  " old vim-powerline symbols
  let g:airline_symbols.branch = '⭠'
  let g:airline_symbols.readonly = '⭤'
  let g:airline_symbols.linenr = '⭡'

" Keymapping
inoremap jj <ESC>
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <C-o> :NERDTreeToggle<CR>
nnoremap <C-;> :Files<CR>

" cs<thing to change><thing to change to>
" ds<thing to delete>
" ysiw<thing to surround with> --iw is current text word
" yss<thing to surround with> --for entire line
" <C-y>, to expand tag (must be fast)
