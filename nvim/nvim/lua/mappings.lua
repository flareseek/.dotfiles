local M = {}
local map = vim.keymap.set

M.keymap = function()
  map("t", "<Esc>", "<C-\\><C-N>", { noremap=true, desc = "terminal escape terminal mode" })
  map("t", "<C-[>", "<C-\\><C-N>", { noremap=true, desc = "terminal escape terminal mode" })

  map("n", "<leader>rn", "<cmd>set relativenumber!<CR>", { noremap = true, silent = true})
  vim.g.lightweight_mode = false
  vim.g.mapleader = "\\"
-- vim.g.maplocalleader = ""
end

M.nvim_tree = function ()
  map("n", "<C-n>", "<cmd>NvimTreeToggle<cr>", { desc = "nvimtree toggle window" })
  map("n", "<leader>e", "<cmd>NvimTreeFocus<cr>", { desc = "nvimtree focus window" })
end

M.mini_splitjoin = {
  toggle = "=s",
}

M.mini_surround = {
  detect = "<leader>s",
  keymaps = {
    add = '<leader>sa',
    delete = '<leader>sd',
    replace = '<leader>sr',
    find = '<leader>sf',
    find_left = '<leader>sF',
    highlight = '<leader>sh',
    update_n_lines = ''
  }
}

M.telescope = function()
  map("n", "<C-space>", "<cmd>Telescope find_files<cr>", { desc = "Telescope find files" })
  map("n", "<tab><space>", "<cmd>Telescope live_grep<cr>", { desc = "Telescopr live grep" })
end

return M
