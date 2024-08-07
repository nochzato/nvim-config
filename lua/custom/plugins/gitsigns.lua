return {
  'lewis6991/gitsigns.nvim',
  config = function()
    require('gitsigns').setup {}

    local gitsigns = require 'gitsigns'

    vim.keymap.set('n', '<leader>gb', function()
      gitsigns.blame_line { full = true }
    end, { desc = 'Git [B]lame' })
  end,
}
