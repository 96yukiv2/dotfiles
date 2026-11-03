eval "$(/opt/homebrew/bin/brew shellenv)"

HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
setopt SHARE_HISTORY

autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

eval "$(mise activate zsh)"
eval "$(zoxide init zsh)"
source <(fzf --zsh)
eval "$(starship init zsh)"

[[ ! -f ~/.zshrc.local ]] || source ~/.zshrc.local
