local EXCLUDED_FILES_AND_FOLDERS = {
  -- OS generated
  '.DS_Store',

  -- Tooling
  '^.git/',

  -- Tooling generated
  '^node_modules/',
  '^.scala-build/',

  -- IDE generated
  '^.bloop/',
  '^.bsp/',
  '^.metals/',
  '^.idea/',
  '^.vscode/',
}

local function isExcluded(name, bufnr)
  for _, pattern in ipairs(EXCLUDED_FILES_AND_FOLDERS) do
    if string.find(name, pattern) then
      return true
    end
  end
  return false
end

local function startsWithDot(name, bufnr)
  return vim.startswith(name, '.')
end

return {
  'stevearc/oil.nvim',
  opts = {},
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local oil = require 'oil'
    oil.setup()
    vim.keymap.set('n', '-', oil.toggle_float, {})
  end,
  delete_to_trash = true,
  view_options = {
    show_hidden = true,
    is_hidden_file = startsWithDot,
    is_always_hidden = isExcluded,
  },
}
