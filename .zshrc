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

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
#
eval "$(pyenv virtualenv-init -)"

# brew bin
export HOMEBREW_BIN=$(brew --prefix)/bin

# update path
export PATH=$VOLTA_HOME/bin:/usr/local/bin:/Users/kevin/.local/bin:$HOMEBREW_BIN:$PATH

# auto suggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#929b9e,bg=#0d2a34,bold,underline"
