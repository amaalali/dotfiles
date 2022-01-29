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

# >>> JVM installed by coursier >>>
export JAVA_HOME="/Users/amaalali/Library/Caches/Coursier/jvm/graalvm-ce-java8@21.0.0/Contents/Home"
# <<< JVM installed by coursier <<<

#############################################
# Add Java bin directory to PATH
# This is to add the GraalVM on PATH
#############################################
[ -d $JAVA_HOME/bin ] && export PATH="$JAVA_HOME/bin:$PATH"