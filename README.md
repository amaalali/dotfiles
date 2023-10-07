# Installing and Deleting

## Setup steps
1. Clone this repo to location ~/code/dotfiles
1. Install essential dependencies:
    1. [homebrew](https://brew.sh/)
    2. git - [see git setup instructions](#setup-git-config)
    3. stow - `brew install stow`
2. Install stow
3. Install delta
4. Link files using [the install command](#install-command-to-link-dotfiles)
5. Install current font - [see font install instructions and setup guide](#setup-fonts)
6. Install [Starship shell prompt](https://starship.rs/)
7. Install common tools:
    1. fzf - `brew install fzf`
    2. [delta](https://github.com/dandavison/delta) - better git diff
    3. [SDKMan](https://sdkman.io)
8. Install [Scala-CLI](https://scala-cli.virtuslab.org/)
    1. See [installation section](#setup-scala-cli)

### Install Command to link dotfiles
1. In command line ensure that the working directory is the base of this project
1. Run command

```
stow -t ~ -v .
```

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

### Setup ZSH config
1. Add the following line to the `.zshrc

```
. ~/.zshrc_extension
```

### Setup fonts
1. Install font: `brew install --cask font-fira-code-nerd-font`
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
stow -t ~ -v -D .
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

- [ ] Make vimrc modular
- [ ] Make linking configs to local config files a script
- [ ] Make unlinking configs to local config files a script
- [ ] Make script to add folder specific gitconfigs

# Additional Apps and Utilities

- https://github.com/arialdomartini/oh-my-git#install-the-font
