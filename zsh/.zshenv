# For dotfiles
export XDG_CONFIG_HOME="$HOME/.config"

# For specific data
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"

# For cached files
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

export EDITOR="nvim"
export VISUAL="nvim"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export DOTFILES="$HOME/dotfiles"

# History filepath
export HISTFILE="$ZDOTDIR/.zhistory"
# Maximum events for internal history
export HISTSIZE=10000
# Maximum events in history file
export SAVEHIST=10000

# Use command rg instead of grep
export FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
