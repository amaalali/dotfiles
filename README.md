# Installing and Deleting
## Dependencies
- homebrew
- git
- stow
- fzf

## Setup steps

1. Install [hombrew ](https://brew.sh/)
2. Install git `brew install git`
3. Install stow `brew install stow`
4. 3. Install stow `brew install fzf`
5. Link files: Install command `stow -t ~ -v .`
6. Add the following to `.gitconfig` 
```
[include]
  path = .gitconfig_extension
```

## Removal
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
│   ├── bash_aliases
│   ├── bash_functions
├── .agignore
├── .gitconfig_extensions
├── .gitignore
├── .stow-local-ignore
├── .tmux.conf
├── .vimrc
├── .zprofile
├── .zshnenv
├── .zshrc
└── README.md
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
- https://github.com/arialdomartini/oh-my-git#install-the-font
- Better git diff: https://github.com/dandavison/delta

