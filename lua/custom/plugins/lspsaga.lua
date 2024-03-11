return {
  'nvimdev/lspsaga.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter', -- optional
    'nvim-tree/nvim-web-devicons', -- optional
  },
  event = 'LspAttach',
  config = function()
    require('lspsaga').setup {
      -- Disable breadcrumbs
      symbol_in_winbar = {
        enable = false,
      },
      -- Disable virtual text lightbulb
      lightbulb = {
        virtual_text = false,
      },
      ui = {
        code_action = '󰌶',
      },
    }
  end,
}
