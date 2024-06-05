# Set Environment Variables
export XDG_CONFIG_HOME=$HOME/dotfiles
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

# Configure history file
HISTFILE="$XDG_STATE_HOME"/zsh/history
HISTSIZE=2000
SAVEHIST=2000

# Turn off annoying beep
unsetopt beep

# use vi keybindings over emacs
bindkey -v

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "$ZDOTDIR/.zshrc"

autoload -Uz compinit
# End of lines added by compinstall
# Completion files: Use XDG dirs
[ -d "XDG_CACHE_HOME"/zsh ] || mkdir -p "$XDG_CACHE_HOME"/zsh
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME"/zsh/zcompcache
compinit -d "XDG_CACHE_HOME"/zsh/zcompdump-$ZSH_VERSION

# Show pwd in prompt
PS1='%n %~$ '
