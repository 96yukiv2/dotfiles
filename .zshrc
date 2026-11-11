eval "$(/opt/homebrew/bin/brew shellenv)"

HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
setopt SHARE_HISTORY

# Keep built-in completion without a plugin manager.
autoload -Uz compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
compinit

# CLI shortcuts
alias lg='lazygit'
alias ls='eza'
alias ll='eza -la'

# Show the complete output instead of opening a pager.
export BAT_PAGING=never

eval "$(mise activate zsh)"
eval "$(zoxide init zsh)"
source <(fzf --zsh)
eval "$(starship init zsh)"

[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
