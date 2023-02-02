# You can put files here to add functionality separated per file, which
# will be ignored by git.
# Files on the custom/ directory will be automatically loaded by the init
# script, in alphabetical order.

# For example: add yourself some shortcuts to projects you often work on.
#
# brainstormr=~/Projects/development/planetargon/brainstormr
# cd $brainstormr
#
ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="▶"
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh dir vcs newline status)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan,bold,underline"

source .zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

plugins=(macos zsh-autosuggestions rust git autojump golang zaw)

bindkey '^r' zaw-history
bindkey '^b' zaw-git-branches

alias gty="go mod tidy"

source $HOME/.gvm/scripts/gvm

source plugins/zaw/zaw.zsh

# If you come from bash you might have to change your $PATH.
export PATH=/usr/local/bin:$PATH
export PATH="$PATH:$(go env GOPATH)/bin"
export PATH="/usr/local/opt/thrift@0.9/bin:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH=$PATH:$HOME/.nexustools
