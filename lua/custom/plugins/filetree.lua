return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      -- Hide hidden files by default
      filters = {
        dotfiles = true,
      },
      -- Show the current file when opening the tree
      update_focused_file = {
        enable = true,
      },
    }

    -- Automatically open a file when it's created
    local api = require 'nvim-tree.api'
    api.events.subscribe(api.events.Event.FileCreated, function(file)
      vim.cmd('edit ' .. file.fname)
    end)

    vim.keymap.set('n', '<leader>t', '<Cmd>NvimTreeToggle<CR>')
  end,
}
