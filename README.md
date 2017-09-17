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

# Todo
- [ ] Make vimrc modular

# Vim
- Using vim-plug to manage plugins
