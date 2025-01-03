# Installing and Deleting

## Setup steps
1. Clone this repo to location ~/code/dotfiles
2. Install essential dependencies:
    1. [homebrew](https://brew.sh/)
    2. git - with homebrew
    3. stow - with homebrew
3. Link files using [the install command](#install-command-to-link-dotfiles)
4. From home directory, install all packages with `brew bundle` using the `Brewfile` with all required apps. Check the [section below for install details](#install-packages-with-brew-bundle).
5. Configure git, [see git setup instructions](#setup-git-config)
6. Install current font - [see font install instructions and setup guide](#setup-fonts)
7. Install [Starship shell prompt](https://starship.rs/)
8. Install [tpm - Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)
9. Install common tools:
    1. fzf - `brew install fzf`
    1. [delta](https://github.com/dandavison/delta) - better git diff
    1. [SDKMan](https://sdkman.io)
1. Install [Scala-CLI](https://scala-cli.virtuslab.org/)
    1. See [installation section](#setup-scala-cli)
1. Run Brew

###  Install packages with `brew bundle`
1. In command line ensure that the working directory is the base of this project
1. Run command

```
cd ~ && brew bundle install --file=~/Brewfile
```

### Install Command to link dotfiles
1. Install stow
2. Run script `./link.sh`

### Setup Git Config
1. ~Install git: `brew install git`~ This is installed with [the install command](#install-command-to-link-dotfiles)
1. Create a local `.gitconfig` file and add the username, email, and ... ssh for signing
1. Configure git by adding the following line to the `.gitconfig`
  ```
  [include]
    path = ~/.gitconfig_extension
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

### Setup ZSH config
1. Add the following line to the `.zshrc`

```
. ~/.zshrc_extension
```

### Setup fonts
1. Install font: `brew install --cask ???`
2. Change font for **each profile** to use installed font
3. Configure font in VSCode
    1. Change font familty: `"editor.fontFamily": "'FiraCode Nerd Font Mono', Menlo, Monaco, 'Courier New', monospace"`
    1. Enable ligatures: `"editor.fontLigatures": true`


See [Nerd Fonts](https://www.nerdfonts.com) for more options.

### Setup Scala CLI
1. Install using SDKMAN
2. Follow instructions for [shell completions](https://scala-cli.virtuslab.org/install#shell-completions)


## Removal of dotfiles
1. In command line ensure that the working directory is the base of this project
2. Uninstall command:

```
stow -t ~ -v -D home
stow -t ~/.config -v -D config
```

# Folder structure

The aim of the folder structure adopted here is to make a modular folder structure.
For example, if the `.shell_conf` file is removed the `.zshrc` should still load.

## Note

- Instead of `.zshrc` I have a `.zshrc_extension`. This is so that the .zshrc that oh-my-zsh creates can source the `.zshrc_extension`

# Vim

- Using [Vim-Plug](https://github.com/junegunn/vim-plug) to manage plugins
  Install using `curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

### Todo

- [ ] Make linking configs to local config files a script
- [ ] Make unlinking configs to local config files a script

# Additional Apps and Utilities

- https://github.com/arialdomartini/oh-my-git#install-the-font
