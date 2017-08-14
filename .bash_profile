# Environment Variables
export EDITOR='vim'

###################
# Additonal Configs
###################

# Bash aliases
if [ -f ~/.bash/bash_aliases ]; then
  . ~/.bash/bash_aliases
fi

if [ -d ~/.sage/ ]; then
  . ~/.sage/docker
  . ~/.sage/sage_aliases
  . ~/.sage/sage_env
fi
