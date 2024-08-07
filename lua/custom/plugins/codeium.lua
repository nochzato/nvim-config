return {
  'Exafunction/codeium.vim',
  event = 'BufEnter',
  config = function()
    vim.g.codeium_enabled = false
    vim.keymap.set('i', '<M-l>', function()
      return vim.fn['codeium#Accept']()
    end, { expr = true, silent = true })
    vim.keymap.set('i', '<M-x>', function()
      return vim.fn['codeium#Clear']()
    end, { expr = true, silent = true })
    vim.keymap.set('n', '<leader>cc', function()
      return vim.fn['codeium#Chat']()
    end, { expr = true, silent = true, desc = '[C]odeium: [C]hat' })
  end,
}
