# Lines configured by zsh-newuser-install
HISTFILE=~/dotfiles/zsh/.histfile
HISTSIZE=2000
SAVEHIST=2000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/brennan/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Start of custom config lines
PS1='%n %~$ '
