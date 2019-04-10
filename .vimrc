set nocompatible

runtime! debian.vim

let installVundle=1
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
    let installVundle=0
endif

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
Plugin 'vim-ruby/vim-ruby'
Plugin 'airblade/vim-gitgutter'
Plugin 'jiangmiao/auto-pairs'
Plugin 'w0rp/ale'
" Plugin 'mattn/emmet-vim'
Plugin 'editorconfig/editorconfig-vim'
" Plugin 'junegunn/fzf'
" Plugin 'junegunn/fzf.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdtree-git-plugin'
Plugin 'JamshedVesuna/vim-markdown-preview'
" Plugin 'valloric/youcompleteme'
" Plugin 'vim-latex/vim-latex'
" Plugin 'xuhdev/vim-latex-live-preview'

if installVundle == 0
    echo "Installing Vundles, please ignore keymap error messages"
    echo ""
    :PluginInstall
endif

call vundle#end()

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" Source settings
let settings_file = expand('~/.vim/settings')
if filereadable(settings_file)
    source ~/.vim/settings
endif

" Source keybindings
let keybindings_file = expand('~/.vim/keybindings')
if filereadable(keybindings_file)
    source ~/.vim/keybindings
endif

" Source theme options
let airline_file = expand('~/.vim/airline')
if filereadable(airline_file)
    source ~/.vim/airline
endif
