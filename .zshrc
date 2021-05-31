#############################################
# Config accoss systems
#############################################
# my bash functions
if [ -f ~/.bash/functions ]; then
  . ~/.bash/functions
fi

# my aliases
if [ -f ~/.bash/aliases ]; then
  . ~/.bash/aliases
fi

# my environement variables
if [ -f ~/.bash/env ]; then
  . ~/.bash/env
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

#############################################
# oh-my-zsh
#############################################
if [ -f ~/.bash/oh-my-zsh ]; then
  . ~/.bash/oh-my-zsh
fi

#############################################
# Local Config not included in dotfiles repo
#############################################
if [ -f ~/.work/index ]; then
  # This file should link to any other bash config files
  . ~/.work/index
fi

if [ -f ~/.work/env ]; then
  # This file should link to any other bash config files
  . ~/.work/env
fi

#############################################
# Bloop ZSH completions
# see: https://scalacenter.github.io/bloop/setup#zsh-completions
#############################################
autoload -U compinit
fpath=($HOME/.bloop/zsh $fpath)
compinit


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
