local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    -- Add your new formatters here:
    json = { "prettier" },
    yaml = { "prettier" },
    go = { "goimports", "gofumpt" },
  },

  -- Add this block to enable format-on-save:
  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
