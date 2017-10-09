# Environment Variables
export EDITOR='vim'

###################
# Additonal Configs
###################


if [ -f ~/.bash/dev_env_settings ]; then
  . ~/.bash/dev_env_settings
fi

if [ -f ~/.bash/bash_aliases ]; then
  . ~/.bash/bash_aliases
fi

if [ -f ~/.bash/bash_functions ]; then
  . ~/.bash/bash_functions
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

# Powerline
# if [ -f ~/.bash/powerline ]; then
#  . ~/.bash/powerline
# fi
