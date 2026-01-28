require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "gopls", "cue", "typescript", "typescriptreact", "yamlls", "jsonls", "bashls", "pyright", "helm_ls" }
vim.lsp.enable(servers)

-- Auto organize imports for Go on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function(args)
    local client = vim.lsp.get_clients({ bufnr = args.buf, name = "gopls" })[1]
    if not client then return end

    local params = {
      textDocument = { uri = vim.uri_from_bufnr(args.buf) },
      range = {
        start = { line = 0, character = 0 },
        ["end"] = { line = vim.api.nvim_buf_line_count(args.buf), character = 0 },
      },
      context = { only = { "source.organizeImports" }, diagnostics = {} },
    }

    local result = client:request_sync("textDocument/codeAction", params, 1000, args.buf)
    for _, action in pairs(result and result.result or {}) do
      if action.edit then
        vim.lsp.util.apply_workspace_edit(action.edit, "utf-8")
      elseif action.command then
        client:exec_cmd(action.command)
      end
    end

    -- format the buffer after organizing imports
    vim.lsp.buf.format({ async = false, bufnr = args.buf })
  end,
})
