# Installing and Deleting

## Dependencies

- homebrew
- git
- stow - automatically creates and delete symbolic links for all dotfiles
- [Starship shell](https://starship.rs/)
- fzf - fuzzy search
- [delta](https://github.com/dandavison/delta) - better git diff
- [SDKMan](https://sdkman.io)

## Setup steps

1. Install [hombrew](https://brew.sh/)
1. Install and setup git [setup instructions](#setup-git-config)
1. Install stow `brew install stow`
1. Install fzf `brew install fzf`
1. Install delta
1. Link files: Install command `stow -t ~ -v .`
1. Install and setup `oh-my-zsh` [setup instructions](#setup-oh-my-zsh-config)


### Setup Git Config
1. Install git: `brew install git`
1. Generate GPG signing keys for an email
1. Create a local `.gitconfig` file and add the username, email, and the GPG Signing key. 
1. Configure git by adding the following line to the `.gitconfig` 
  ```
  [include]
    path = .gitconfig_extension
  ```
5. For folder specific / project specific git config, create a different config file `.gitconfig_${folder_name}` and link to that for that folder in `.gitconfig`. For example to use a different user details for signing commits in folder `~/code/foo` then add the following 

```
// .gitconfig
[includeIf "gitdir:code/foo/"]
  path = .gitconfig_foo
```

```
// .gitconfig_foo
[user]
  name = <Name>
  email = <Email>
  signingKey = <SigningKey>

```

### Setup oh-my-zsh config
1. Install [oh-my-zsh](https://ohmyz.sh)
1. Add the following line to the `.zshrc

```
. ~/.zshrc_extension
```

## Removal

Uninstall command

```
stow -t ~ -v -D .
```

# Folder structure

The aim of the folder structure adopted here is to make a modular folder structure.
For example, if the `.bash` file is removed the `.bash_profile` should still load.

## Note

- Instead of `.zshrc` I have a `.zshrc_extension`. This is so that the .zshrc that oh-my-zsh creates can source the `.zshrc_extension`

# Vim

- Using [Vim-Plug](https://github.com/junegunn/vim-plug) to manage plugins
  Install using `curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

### Todo

- [ ] Make vimrc modular
- [ ] Make linking configs to local config files a script
- [ ] Make unlinking configs to local config files a script
- [ ] Make script to add folder specific gitconfigs

# Additional Apps and Utilities

- https://github.com/arialdomartini/oh-my-git#install-the-font
