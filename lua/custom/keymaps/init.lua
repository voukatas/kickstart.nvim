vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-s>', ':update<CR>', { noremap = true, silent = true })
vim.keymap.set('n', ']c', require('gitsigns').next_hunk, { desc = 'Next Hunk' })
vim.keymap.set('n', '[c', require('gitsigns').prev_hunk, { desc = 'Previous Hunk' })
