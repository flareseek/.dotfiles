local mapping = require("mappings").mini_surround
return {
  'echasnovski/mini.surround',
  version = false,
  -- event = { "BufReadPost", "BufNewFile" },
  keys = { { mapping.detect, mode = { 'n', 'x' } } },
  -- opts = {},
  config = function()
    require('mini.surround').setup({
      mappings = mapping.keymaps
    })
  end
}
