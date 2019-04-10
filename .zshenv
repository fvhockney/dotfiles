limit coredumpsize 0 2> /dev/null
umask 022

typeset -U path
path=(~/bin /usr/local/bin /usr/local/sbin /sbin/ ~/.config/composer/vendor/bin $path)

typeset -U manpath

export EDITOR=vim
export VISUAL=vim
export XDG_CONFIG_HOME="$HOME/.config"
export ZSH="$HOME/.oh-my-zsh"
export RANGER_LOAD_DEFAULT_RC=false
