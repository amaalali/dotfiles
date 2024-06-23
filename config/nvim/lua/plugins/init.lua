require('lazy').setup {

  require 'plugins/conform',
  require 'plugins/gitsigns',
  require 'plugins/indent-blankline',
  require 'plugins/mini',
  require 'plugins/nvim-cmp',
  require 'plugins/nvim-lspconfig',
  require 'plugins/nvim-metals',
  require 'plugins/nvim-tmux-nav',
  require 'plugins/nvim-treesitter',
  require 'plugins/oil',
  require 'plugins/telescope',
  require 'plugins/theme',
  require 'plugins/todo-comments',
  require 'plugins/which-key',

  { 'numToStr/Comment.nvim', opts = {} },

  -- NOTE: Next step on your Neovim journey: Add/Configure additional plugins for kickstart
  --
  --  Here are some example plugins that I've included in the kickstart repository.
  --  Uncomment any of the lines below to enable them (you will need to restart nvim).
  --
  -- require 'kickstart.plugins.debug',
  -- require 'kickstart.plugins.indent_line',

  -- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
  --    This is the easiest way to modularize your config.
  --
  --  Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
  --    For additional information, see `:help lazy.nvim-lazy.nvim-structuring-your-plugins`
  -- { import = 'custom.plugins' },
}
