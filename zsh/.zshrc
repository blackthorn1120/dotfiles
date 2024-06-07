# Set the directory we want to store zinit and plugins
	ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zsh/zinit/zinit.git"

# Download Zinit if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
	mkdir -p "$(dirname $ZINIT_HOME)"
	git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load Zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

# Load completions
autoload -U compinit && compinit

zinit cdreplay -q
# History
HISTSIZE=5000
HISTDIR="${XDG_STATE_HOME:-${HOME}/.local/state}/zsh"
if [ ! -d "$HISTDIR" ]; then
	mkdir -p "$(dirname $HISTDIR)"
fi
HISTFILE="${HISTDIR}/zsh_history"
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Projects Directory
mkdir -p "${HOME}/Projects"

# Keybindings

# Completion Styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

# Aliases
alias ls='ls --color'
alias la='ls -la --color'
alias vim='nvim'
alias vi='nvim'
alias :q='exit'
alias clera='clear'
alias claer='clear'

# Shell Integrations
eval "$(fzf --zsh)"

# Initialize Oh-my-posh
eval "$(oh-my-posh init zsh --config $XDG_CONFIG_HOME/oh-my-posh/config.toml)"

# Add the zsh_functions directory to fpath
fpath+=${ZDOTDIR}/.zsh_functions
