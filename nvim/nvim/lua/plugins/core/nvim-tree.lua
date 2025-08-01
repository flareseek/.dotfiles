return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  cmd = { "NvimTreeToggle", "NvimTreeFocus" },
  init = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    require('mappings').nvim_tree()
  end,
  opts = {
    disable_netrw = true,
    sync_root_with_cwd = true,
    view = {
      preserve_window_proportions = true,
      width = 30,
      float = { enable = true },
    },

    renderer = {
      add_trailing = true,
      highlight_git = "all",
      -- highlight_diagnostics = "name",
      indent_markers = { enable = true },

      -- NVCHAD
      icons = {
        glyphs = {
          default = "󰈚",
          folder = {
            default = "",
            empty = "",
            empty_open = "",
            open = "",
            symlink = "",
          },
          git = { unmerged = "" },
        },
      },
    },

    update_focused_file = {
      enable = false,
      update_root = {
        enable = true,
      },
    },

    filters = {
      enable = true,
      dotfiles = false,
    },

    actions = {
      remove_file = {
        close_window = false,
      }
    },
  }
}
