# Environment Variables
export EDITOR='vim'

###################
# Additonal Configs
###################

# Powerline
if [ -f ~/.bash/powerline ]; then
  . ~/.bash/powerline
fi

# Bash aliases
if [ -f ~/.bash/bash_aliases ]; then
  . ~/.bash/bash_aliases
fi

if [ -d ~/.sage/ ]; then
  . ~/.sage/docker
  . ~/.sage/sage_aliases
  . ~/.sage/sage_env
fi

# Exercism
if [ -f ~/.config/exercism/exercism_completion.bash ]; then
  . ~/.config/exercism/exercism_completion.bash
fi
