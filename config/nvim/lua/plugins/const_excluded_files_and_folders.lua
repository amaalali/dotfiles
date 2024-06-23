local EXCLUDED_FILES_AND_FOLDERS = {
  -- OS generated
  '.DS_Store',

  -- Tooling
  '^.git/',

  -- Tooling generated
  '^node_modules/',

  -- IDE generated
  '^.bloop/',
  '^.bsp/',
  '^.metals/',
  '^.idea/',
  '^.vscode/',
}

return EXCLUDED_FILES_AND_FOLDERS
