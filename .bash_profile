# Environment Variables
export EDITOR='vim'

# Aliases
alias b="bundle"
alias be="bundle exec"

# Git
alias g="git"

# System
alias cc="clear"
alias ll="ls -l"
alias all="ls -al"

# Directory Navigation
alias ..="cd .."
alias ...="cd ../.."
alias dot="cd ~/dotfiles"
alias dev="cd ~/dev"

###################
# Additonal Configs
###################

# Bash aliases
if [ -f ~/.bash/bash_aliases ]; then
  . ~/.bash/bash_aliases
fi

if [ -f ~/.bash/sage_aliases ]; then
  . ~/.bash/sage_aliases
fi

if [ -d ~/.bash/sage ]; then
  . ~/.bash/sage_aliases
  . ~/.bash/sage_env
  . ~/.bash/docker
fi
