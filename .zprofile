#############################################
# Homebrew tab completition
# See: https://docs.brew.sh/Shell-Completion
#############################################
[ -d /opt/homebrew ] && eval "$(/opt/homebrew/bin/brew shellenv)"
FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH


#############################################
#############################################
# BELOW THIS POINT IS AUTOMATIC MANAGED BY TOOLS 
#############################################
#############################################
