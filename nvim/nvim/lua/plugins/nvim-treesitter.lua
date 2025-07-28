return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
  build = ":TSUpdate",
  init = function()
    if not vim.g.lightweight_mode then
      vim.wo.foldmethod = 'expr'
      vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
      vim.opt.foldlevelstart = 99
    end
  end,
  opts = {
    ensure_installed = { "lua", "luadoc", "printf", "vim", "vimdoc", "c", "cpp", "javascript", "typescript", "json" },
    sync_install = false,
    auto_install = true,

    highlight = {
      enable = true,
      use_languagetree = true,
      disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
          return true
        end
      end,
      additional_vim_regex_highlighting = false,
    },
    indent = { enable = true },
  },

  config = function(_, opts)
    require('nvim-treesitter.configs').setup(opts)
  end
}
