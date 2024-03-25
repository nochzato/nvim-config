return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup {
      options = {
        show_close_icon = false,
        show_buffer_close_icons = false,
      },
    }

    vim.keymap.set('n', ']b', '<Cmd>BufferLineCycleNext<CR>', { desc = 'Cycle to the next [B]uffer' })
    vim.keymap.set('n', '[b', '<Cmd>BufferLineCyclePrev<CR>', { desc = 'Cycle to the previous [B]uffer' })
    vim.keymap.set('n', '<leader>bl', '<Cmd>BufferLineCloseRight<CR>', { desc = 'Close [B]uffers to the right' })
    vim.keymap.set('n', '<leader>bh', '<Cmd>BufferLineCloseLeft<CR>', { desc = 'Close [B]uffers to the left' })
    vim.keymap.set('n', '<leader>bo', '<Cmd>BufferLineCloseOthers<CR>', { desc = 'Close all [O]ther [B]uffers' })
    vim.keymap.set('n', '<leader>bc', '<Cmd>bd<CR>', { desc = '[C]lose current [B]uffer' })
  end,
}
