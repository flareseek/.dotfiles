local mapping = require('mappings').mini_splitjoin
local function detect_key()
  local keys = {}
  for key, value in pairs(mapping) do
    table.insert(keys, { value , mode= { 'n', 'x' } })
  end
  return keys
end
return {
  'echasnovski/mini.splitjoin',
  version = false,
  keys = detect_key(),
  config = function()
    local msj = require('mini.splitjoin')
    msj.setup({
      mappings = mapping,
      join = { hooks_post = { msj.gen_hook.pad_brackets({ pad = " " }) } },
    })
  end
}
