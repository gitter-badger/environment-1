# ZSH configuration.

## Main shell configuration.
. ~/.zsh/aliases
. ~/.zsh/functions
. ~/.zsh/environment
. ~/.zsh/configuration

## Private configuration is optional.
[[ -a ~/.zsh/private ]] && . ~/.zsh/private
