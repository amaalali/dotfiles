# Installing and Deleting
Install command
```
stow -t ~ -v .
```

Uninstall command
```
stow -t ~ -v -D .
```

# Folder structure
The aim of the folder structure adopted here is to make a modular folder strucure. 
For example, if the `.bash` file is removed the `.bash_profile` should still load.

```
dotfiles/
├── .bash
│   ├── .bash_aliases.un~
│   ├── .bash_functions.un~
│   ├── bash_aliases
│   ├── bash_functions
│   └── powerline
├── .agignore
├── .bash_profile
├── .gitconfig
├── .gitignore
├── .inputrc
├── .pryrc
├── .stow-local-ignore
├── .tmux.conf
├── .vimrc
├── README.md
└── powerline-shell.py
```

# Vim
- Using [Vim-Plug](https://github.com/junegunn/vim-plug) to manage plugins 
Install using `curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

### Todo
- [ ] Make vimrc modular

# Additional Apps and Utilities
- `rbenv` - to manage ruby versions
  - install via homebrew
- `mycli` - a MySQL command line application
  - install via homebrew
- `tig` - git command line tool
  - install via homebrew
- `the_silver_searcher` - ag, faster than ack
  - install via homebrew
