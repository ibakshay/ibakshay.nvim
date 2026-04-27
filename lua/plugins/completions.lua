return {
  {
    "github/copilot.vim",
    lazy = false,
    config = function()
      vim.g.copilot_no_tab_map = true

      -- Accept suggestion (Ctrl+Enter)
      vim.keymap.set('i', '<C-CR>', 'copilot#Accept("\\<CR>")', {
        expr = true,
        replace_keycodes = false
      })

      -- Cycle suggestions
      vim.keymap.set('i', '<C-.>', '<Plug>(copilot-next)')
      vim.keymap.set('i', '<C-,>', '<Plug>(copilot-previous)')

      -- Dismiss
      vim.keymap.set('i', '<C-e>', '<Plug>(copilot-dismiss)')

      -- Accept word / line
      vim.keymap.set('i', '<C-y>', '<Plug>(copilot-accept-word)')
      vim.keymap.set('i', '<C-g>', '<Plug>(copilot-accept-line)')

    end,
  },
}
