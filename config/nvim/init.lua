-- [[ lazy.nvim installation if not installed ]]
require 'boot.lazy'
require 'config'

-- [[ Customising Neovim options ]]
require 'options'

-- [[ Custom Keymappings ]]
require 'keymaps'

-- [[ Custom Autocommands that don't fit elsewhere]]
require 'autocmds'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
