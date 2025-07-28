return {
  init_options = { hostInfo = 'neovim' },
  cmd = {
    "typescript-language-server",
    "--stdio",
  },
  filetypes = {
    "typescript",
    "typescriptreact",
    "typescript.tsx",
    "javascript"
  },
  root_markers = {
    "tsconfig.json",
    "jsconfig.json",
    "package.json",
    ".git",
  },
}
