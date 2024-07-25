return {
  'ray-x/go.nvim',
  dependencies = {
    'ray-x/guihua.lua',
    'neovim/nvim-lspconfig',
    'nvim-treesitter/nvim-treesitter',
  },
  opts = {
    disable_defaults = true,
    diagnostic = false,
  },
  config = function()
    require('go').setup()
  end,
  event = { 'CmdlineEnter' },
  ft = { 'go', 'gomod' },
  -- Prevents Neovim from freezing on plugin installation/update.
  -- See: <https://github.com/ray-x/go.nvim/issues/433>
  build = ':lua require("go.install").update_all_sync()',
}
