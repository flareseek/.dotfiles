return {
  "mason-org/mason.nvim",
  cmd = { "Mason", "MasonInstall", "MasonUpdate" },
  opts = {},
  init = function()
    vim.env.PATH = vim.fn.stdpath("data") .. "/mason/bin:" .. vim.env.PATH
    vim.env.npm_config_cache = vim.env.HOME .. "/.cache/npm"
  end,
}
