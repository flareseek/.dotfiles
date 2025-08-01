return     {
  'nvim-telescope/telescope.nvim', branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },
  cmd = { "Telescope" },
  init = function()
    require('mappings').telescope()
  end,
  opts = {
    defaults = {
      mappings = {
        i = {
          -- ["<esc>"] = require("telescope.actions").close,
        }
      }
    }
  }
}

