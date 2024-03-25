return {
  'stevearc/oil.nvim',
  -- Optional dependencies
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('oil').setup {}

    vim.keymap.set('n', '<leader>o', '<Cmd>Oil<CR>', { desc = '[O]il' })
  end,
}
