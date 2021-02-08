#############################################
# Config accoss systems
#############################################
if [ -f ~/.bash/bash_functions ]; then
  . ~/.bash/functions
fi

if [ -f ~/.bash/aliases ]; then
  . ~/.bash/aliases
fi

#############################################
# Local Config not included in dotfiles repo
#############################################

if [ -d ~/.work ]; then
  # This file should link to any other bash config files
  . ~/.work/index
fi

#############################################
# Git completion
#############################################
if [ -f ~/.bash/.git-completion.bash ]; then
  . ~/.bash/.git-completion.bash
fi


#############################################
# pyenv + Python support
#############################################
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

#############################################
# Homebrew tab completition
#############################################
if type brew &>/dev/null; then
  HOMEBREW_PREFIX="$(brew --prefix)"
  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  else
    for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*; do
      [[ -r "$COMPLETION" ]] && source "$COMPLETION"
    done
  fi
fi

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
