return {
  vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true }),
  vim.api.nvim_set_keymap('n', '<C-s>', ':update<CR>', { noremap = true, silent = true }),
}
