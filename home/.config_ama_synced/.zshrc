#############################################
# Synced Config that applies accoss systems
#############################################
# my bash functions
if [ -f ~/.config_ama_synced/functions ]; then
  . ~/.config_ama_synced/functions
fi

# my aliases
if [ -f ~/.config_ama_synced/aliases ]; then
  . ~/.config_ama_synced/aliases
fi

#############################################
# Local Config
#############################################
# my bash functions
if [ -f ~/.config_ama_local/functions ]; then
  . ~/.config_ama_local/functions
fi

# my aliases
if [ -f ~/.config_ama_local/aliases ]; then
  . ~/.config_ama_local/aliases
fi

#############################################
# pyenv + Python support
#############################################
if command -v pyenv 1>/dev/null 2>&1; then
  export PYENV_ROOT="$HOME/.pyenv"
  [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

#############################################
# rbenv + Ruby support
#############################################
if command -v rbenv 1>/dev/null 2>&1; then
  eval "$(rbenv init - zsh)"
fi

#############################################
# Local Config not included in dotfiles repo
#############################################
if [ -f ~/.config_ama_local/index ]; then
  # This file should link to any other bash config files
  . ~/.config_ama_local/index
fi

#############################################
# Bloop ZSH completions
# see: https://scalacenter.github.io/bloop/setup#zsh-completions
#############################################
autoload -U compinit
fpath=($HOME/.bloop/zsh $fpath)
compinit

#############################################
# fzf
#############################################
source <(fzf --zsh)

#############################################
# Node version manager: FNM
# https://github.com/Schniz/fnm
#############################################
eval "$(fnm env --use-on-cd --shell zsh --version-file-strategy=recursive --resolve-engines)"

#############################################
# starship init
#############################################
eval "$(starship init zsh)"

#############################################
# zoxide init
# https://github.com/ajeetdsouza/zoxide
#############################################
eval "$(zoxide init zsh)"

#############################################
# Print custom shell welcome message
#############################################
echo "$(cat $HOME/.config_ama_synced/.the_coding_laama.txt)"
