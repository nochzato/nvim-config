return {
  'stevearc/oil.nvim',
  -- Optional dependencies
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('oil').setup {
      view_options = {
        show_hidden = true,
      },
    }

    vim.keymap.set('n', '-', '<Cmd>Oil<CR>', { desc = 'Oil' })
  end,
}
