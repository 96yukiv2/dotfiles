eval "$(/opt/homebrew/bin/brew shellenv)"

HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
setopt SHARE_HISTORY

autoload -Uz compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
compinit

alias lg='lazygit'
alias ls='eza'
alias ll='eza -la'
alias cat='bat'
lt() {
  local level=2
  if [[ "$1" == <-> ]]; then
    level="$1"
    shift
  fi
  eza --tree --level="$level" "$@"
}

export BAT_PAGING=never

eval "$(mise activate zsh)"
eval "$(zoxide init zsh)"
source <(fzf --zsh)
eval "$(starship init zsh)"
