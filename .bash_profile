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

# Environment variables for Dev work
if [ -f ~/.bash/env ]; then
  . ~/.bash/env
fi
if [ -f ~/.bash/bash_functions ]; then
  . ~/.bash/bash_functions
fi

if [ -d ~/.sage/ ]; then
  . ~/.sage/sage_aliases
  . ~/.sage/sage_env
  . ~/.sage/sage_functions
fi

# Exercism
if [ -f ~/.config/exercism/exercism_completion.bash ]; then
  . ~/.config/exercism/exercism_completion.bash
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
