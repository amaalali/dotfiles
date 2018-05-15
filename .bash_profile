# Environment Variables
export EDITOR='vim'


#############################################
# Config accoss systems
#############################################
if [ -f ~/.bash/env ]; then
  . ~/.bash/env
fi
if [ -f ~/.bash/bash_functions ]; then
  . ~/.bash/bash_functions
fi

if [ -f ~/.bash/bash_aliases ]; then
  . ~/.bash/bash_aliases
fi

if [ -f ~/.bash/prompt ]; then
  . ~/.bash/prompt
fi

#############################################
# Local Config not included in dotfiles repo
#############################################

if [ -d ~/.work ]; then
  # This file should link to any other bash config files
  . ~/.work/index
fi

#############################################
# bash completion
#############################################

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#############################################
# Git completion
#############################################
if [ -f ~/.bash/.git-completion.bash ];
  then . ~/.bash/.git-completion.bash
fi
