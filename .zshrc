# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


bindkey '^J' self-insert

# privent "zsh: no matched found" with '*' in command not for wildcard
setopt +o nomatch

# prevent from exiting with Ctrl-D
setopt IGNOREEOF

# use colors
autoload -Uz colors
colors

# complement
#autoload -Uz compinit
#compinit

zstyle ':completion:*:default' menu select=2
#zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# comment out with #
setopt interactivecomments

#
unsetopt promptcr

# prompt settings
#PROMPT="${fg[green]}%n@%m:%~${reset_color} %# "
# prevent prompt strings from disappearing
PROMPT="%{${fg[green]}%n:%~$reset_color%} %# "

# ls color
#export LSCOLORS=exfxcxdxbxegedabagacad
 export LSCOLORS=ExGxcxdxCxegedabagExEx
alias ls='ls -G'

alias cd..='cd ..'
