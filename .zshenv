#############################################
#  Environment variables                    #
#     and                                   #
#  PATH Config                              #
#############################################

export EDITOR='vim'

#############################################
# User binaries
#############################################
if [ -d $HOME/bin ]; then
    export PATH="$HOME/bin:$PATH"
fi

#############################################
# node modules
#############################################
if [ -f ./node_modules/.bin ]; then
    export PATH=$PATH:./node_modules/.bin
fi

#############################################
# Python
#############################################
if [ -d ~/Library/Python/3.6/bin ]; then
    export PATH=$PATH:~/Library/Python/3.6/bin
fi

#############################################
# Mongo Shell
#############################################
#if [ -d ~/Documents/mongodb-osx-x86_64-enterprise-4.0.1 ]; then
#    export PATH=$PATH:~/dev/mongodb-osx-x86_64-3.6.17/bin/
#fi

#############################################
# Rust + cargo support
#############################################
if [ -f $HOME/.cargo ]; then
    export PATH="$HOME/.cargo/bin:$PATH"
fi

#############################################
# IntelliJ
#############################################
if [ -f $HOME/.idea_scripts ]; then
    export PATH="$PATH:$HOME/.idea_scripts/"
fi

#############################################
# Homebrew's sbin
#############################################
export PATH="/usr/local/sbin:$PATH"

#############################################
# Dependencies installed with Coursier
# https://get-coursier.io
#############################################
export PATH="$PATH:/Users/amaalali/Library/Application Support/Coursier/bin"

#############################################
# nvm ? node version manager
#############################################
export NVM_DIR="$HOME/.nvm"

#############################################
# Local config not included in dotfiles repo
#############################################
if [ -d ~/.work ]; then
  . ~/.work/env
fi
