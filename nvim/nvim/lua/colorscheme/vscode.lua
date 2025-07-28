return {
  enabled = false,
  "Mofiqul/vscode.nvim",
  lazy = false,
  priority = 1000,
  init = function()
    vim.cmd("colorscheme vscode")
  end,
}
