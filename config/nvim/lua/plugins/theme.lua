local T = {
  'EdenEast/nightfox.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme 'carbonfox'
    vim.cmd.hi 'Comment gui=none'
  end,
  opts = {
    colorblind = {
      enable = true,
      severity = {
        -- deutan = 0.6,
        -- deutan = 1,
        deutan = 0.3,
      },
    },
  },
}

return T
