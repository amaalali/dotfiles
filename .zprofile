#############################################
# Homebrew tab completition
# See: https://docs.brew.sh/Shell-Completion
#############################################
eval "$(/opt/homebrew/bin/brew shellenv)"
FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH


#############################################
#############################################
# BELOW THIS POINT IS AUTOMATIC MANAGED BY TOOLS 
#############################################
#############################################

# >>> JVM installed by coursier >>>
export JAVA_HOME="/Users/amaalali/Library/Caches/Coursier/jvm/graalvm-ce-java8@21.0.0/Contents/Home"
# <<< JVM installed by coursier <<<
