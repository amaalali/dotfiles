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
3. Setup [local configs](#setup-local-config)

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
```

### Setup ZSH config
1. Add the following line to the `.zshrc`

```
. ~/.config_ama_synced/.zshrc
```

### Setup fonts
1. Install font: `brew install --cask ???`
2. Change font for **each profile** to use installed font

### Setup local config
- create `~/.config_ama_local/tmux` add `set -g @sessionx-custom-paths 'comma, ~/separated/folders'`

# Folder structure

The aim is to:
- make the configs resilient to breakage. For example, by having the `./config_ama_synced/.gitconfig` file referenced from the `.gitconfig`, if the `./config_ama_synced/gitconfig` is removed, the core parts of the `.gitconfig` will still be able to run, just without customisations

- allow other tools that automatically add to dotfiles to do so without requiring that to synced everywhere. For example __sdkman__ and __scala-cli__ add bits to the `.zshrc` when installed. By splitting files, this means that the bits added by tools aren't synced automatically.

The main folders are
- `home` - contents are symlinked to the home folder (`~`)
- `config` - contents are symlinked to `~/.config` folder

## Neovim
### Adding a plugin

1. Add a new file, eg `foo.lua` to `lua/plugins/`, ie `lua/plugins/foo.lua`
2. In `lua/plugins/foo.lua` add the config, ensuring that there is a return value. Eg:

```lua
return {
  `amaalali/foo.nvim`,
  opts = {}
}
```

3. Hook the config into lazy's setup by adding the following to the `setup` block

```lua
require 'plugins.foo'

```
