return {

  'nvim-neo-tree/neo-tree.nvim',
  keys = {
    { '<leader>ft', '<cmd>Neotree toggle<cr>', desc = 'NeoTree' },
  },
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      -- Your custom configuration goes here
      -- For example:
      close_if_last_window = true, -- Close Neo-tree if it is the last window
      -- Add more configuration options as needed
    }
  end,
}
