return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup()

    vim.keymap.set('n', '<leader>ha', function()
      harpoon:list():add()
    end, { desc = '[H]arpoon [a]dd' })
    vim.keymap.set('n', '<leader>hl', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = '[H]arpoon [l]ist' })

    for _, idx in ipairs { 1, 2, 3, 4, 5 } do
      vim.keymap.set('n', string.format('<leader>%d', idx), function()
        harpoon:list():select(idx)
      end)
    end
  end,
}
