return {
  'saghen/blink.cmp',
  version = '1.*',
  event = "InsertEnter",
  opts = {
    keymap = { preset = 'super-tab' },
    completion = { trigger = { show_on_keyword = true, } },
    appearance = {
      nerd_font_variant = 'Nerd Font Mono'
    },
    completion = {
      documentation = { auto_show = true },
      list = { selection = { preselect = false, auto_insert = false } }
    },
    sources = { default = { 'lsp', 'path', 'buffer' }, },
  },
  opts_extend = { "sources.default" },
}
