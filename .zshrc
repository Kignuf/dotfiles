eval "$(starship init zsh)"

# aliases
source ~/.aliases

# EDITOR
export EDITOR='code' # vs code

# Node
export NODE_ENV="dev"

# Volta (equivalent to nvm)
VOLTA_HOME=$HOME/.volta

# completions
autoload -Uz compinit && compinit
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#929b9e,bg=#0d2a34,bold,underline"

# update path
export PATH=$VOLTA_HOME/bin:$PATH

# auto suggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
