
# <Synced config>
    # my environement variables
    if [ -d ~/.shell_conf_synced ]; then
        if [ -f ~/.shell_conf_synced/env ]; then
            . ~/.shell_conf_synced/env
        fi
    fi
# </Synced config>


# <Local config>
    # not included in dotfiles repo

    if [ -d ~/.shell_conf_local ]; then
        if [ -f ~/.shell_conf_local/env ]; then
            . ~/.shell_conf_local/env
        fi
    fi
# </Local config>


# <Environment variables>

    export EDITOR='nvim'

    # Location of dotfiles
    export MY_DOTFILES_DIR=$HOME/Developer/dotfiles

    export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock

# </Environment variables>

# <User Binaries>
    if [ -d $HOME/bin ]; then
        export PATH="$HOME/bin:$PATH"
    fi
# </User Binaries>

# <Additional Installed Binaries>
    # NPM
    if [ -f ./node_modules/.bin ]; then
        export PATH=$PATH:./node_modules/.bin
    fi

    # Rust + cargo support
    if [ -f $HOME/.cargo ]; then
        export PATH="$HOME/.cargo/bin:$PATH"
    fi

    # Homebrew's sbin
    export PATH="/usr/local/sbin:$PATH"

    # Coursier installed binaries https://get-coursier.io
    export PATH="$PATH:$HOME/Library/Application Support/Coursier/bin"

    # Add Java bin directory to PATH
    [ -d $JAVA_HOME/bin ] && export PATH="$JAVA_HOME/bin:$PATH"

# </Additional Installed Binaries>
