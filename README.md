# Installing and Deleting

## Setup steps

### Install essentials
Install essential dependencies:
    1. [homebrew](https://brew.sh/)
    2. git - with homebrew
    3. stow - with homebrew

### Get config

1. Clone this repo to location ~/Developer/dotfiles
2. Link files by running script `./link.sh`

### Install packages with Homebrew
Install apps, packages, tools with homebrew

1. In command line ensure that the working directory is the base of this project
2. Run command
```
cd ~ && brew bundle install --file=~/Brewfile
```

### Configure
1. Configure git, [see git setup instructions](#setup-git-config)
2. Setup [ZSH config](#setup-zsh-config)

### Manual installation
1. Install [tpm - Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)
2. Maybe?: Install current font - [see font install instructions and setup guide](#setup-fonts)

### Setup dev environments

#### Java and Scala
1. Install [SDKMan](https://sdkman.io)
2. Install appropriate JVM version - via sdk
3. Scala - via sdk
4. SBT - via sdk
5. Scala-CLI - via sdk
    1. Install [Scala-CLI](https://scala-cli.virtuslab.org/).
    2. Configure [shell completions](https://scala-cli.virtuslab.org/install#shell-completions)


### Setup Git Config
1. Create a local `.gitconfig` file and add the username, email, and ... ssh for signing
2. Configure git by adding the following line to the `.gitconfig`
  ```
  [include]
    path = ~/.gitconfig_extension
  ```
3. Add basic config to `~/.gitconfig`
```
[user]
	name = <name>
	email = <email>
[commit].
	gpgsign = true
[gpg]
	format = ssh
```
5. For folder specific / project specific git config, create a different config file `.gitconfig_${folder_name}` and link to that for that folder in `.gitconfig`. For example to use a different user details for signing commits in folder `~/code/foo` then add the following

```
// ~/.gitconfig
[includeIf "gitdir:code/foo/"]
  path = .gitconfig_foo
```

```
// ~/.gitconfig_foo
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


## Removal of dotfiles
1. In command line ensure that the working directory is the base of this project
2. Uninstall command:

```
stow -t ~ -v -D home
stow -t ~/.config -v -D config
```

# Folder structure

The aim is to:
- make the configs resiliant to breakage. For example, by having the `.gitconfig_extension` file referenced from the `.gitconfig`, if the `.gitconfig_extension` is removed, the core parts of the `.gitconfig` will still be able to run, just without the customisations in the `.gitconfig_extension`
- allow other tools that automattically add to dotfiles to do so without requiring that to synced everywhere. For example oh-my-zsh creates a `.zshrc` when installed which wipes the exisiting `.zshrc`. By splitting this means that the stuff that oh-my-zsh adds doesn't clutter the config I care about backing up. 

The main folders are
- `home` which is symlinked to the home folder (`~`)
- `config` which is symlinked to `.config` folder in the home folder (`~/.config`)
