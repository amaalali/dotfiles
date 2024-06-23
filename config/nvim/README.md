# Neovim config

## About this config

- Uses ['lazy'](https://github.com/folke/lazy.nvim)
- Is modular

## Installation

### Install Neovim

See details for installing ['Neovim'](https://github.com/neovim/neovim/releases/tag/stable)

### Install External Dependencies

External Requirements:
- Basic utils: `git`, `make`, `unzip`, C Compiler (`gcc`)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
- Language Setup:
  - If want to write Typescript, you need `npm`
  - If want to write Golang, you will need `go`
  - etc.

### Install config

Clone repo:

```sh
git clone https://github.com/amaalali/neovim-config.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

<details>
  <summary>Install directory</summary>

Neovim's configurations are located under the following paths, depending on the OS:

| OS | PATH |
| :- | :--- |
| Linux, MacOS | `$XDG_CONFIG_HOME/nvim`, `~/.config/nvim` |
| Windows (cmd)| `%userprofile%\AppData\Local\nvim\` |

</details>

### Post Installation

Start Neovim

```sh
nvim
```

### Helpful post-install commands

Lazy will install all the plugins you have. Use `:Lazy` to view current plugin status.

## Adding a plugin

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

## Managing installed plugins

To check the current status of your plugins, run `:Lazy`

To update plugins, you can run `:Lazy update`


