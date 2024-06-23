-- [[ Custom Neovim that MUST be FIRST ]]
require 'bootstrap.leader'

-- [[ Customising Neovim options ]]
require 'options'

-- [[ Custom Keymappings ]]
require 'keymaps'

-- [[ Custom Autocommands that don't fit elsewhere]]
require 'autocmds'

-- [[ lazy.nvim installation if not installed ]]
require 'bootstrap.lazy'

-- [[ Neovim plugins]]
require 'plugins'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
