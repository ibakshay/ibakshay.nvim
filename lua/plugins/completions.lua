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
      vim.keymap.set('i', '<C-n>', '<Plug>(copilot-next)')
      vim.keymap.set('i', '<C-p>', '<Plug>(copilot-previous)')

      -- Dismiss
      vim.keymap.set('i', '<C-e>', '<Plug>(copilot-dismiss)')

    end,
  },
}
