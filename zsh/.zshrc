# history configuration
setopt APPEND_HISTORY
setopt SHARE_HISTORY
HISTSIZE=2000
SAVEHIST=1000
setopt HIST_EXPIRE_DUPS_FIRST
setopt EXTENDED_HISTORY

# history based autocomplete
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward
# bindkey '\e[A' history-beginning-search-backward
# bindkey '\e[B' history-beginning-search-forward

# initialize git status
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '(%b) '

# set prompt(s)
setopt PROMPT_SUBST
PROMPT='%F{blue}[%~]%f %F{green}${vcs_info_msg_0_}%f$ '
RPROMPT='%F{magenta}[%*]%f'

# rust configuration
. "$HOME/.cargo/env"

# go configuration
export PATH=$PATH:/usr/local/go/bin

# erlang / elixir configuration
export ERL_AFLAGS="-kernel shell_history enabled"

# asdf configuration
. "$HOME/.asdf/asdf.sh"
fpath=(${ASDF_DIR}/completions $fpath)

autoload -Uz compinit && compinit
eval "$(mise activate zsh)"
