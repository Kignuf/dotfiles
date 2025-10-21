eval "$(starship init zsh)"

# aliases
source ~/.aliases

# EDITOR
export EDITOR='code' # vs code

# Node
export NODE_ENV="dev"

# Volta (equivalent to nvm)
VOLTA_HOME=$HOME/.volta

# update path
export PATH=$VOLTA_HOME/bin:$PATH
