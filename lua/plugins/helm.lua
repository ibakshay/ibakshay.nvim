return {
  {
    "towolf/vim-helm",
    ft = "helm",
    init = function()
      vim.filetype.add({
        pattern = {
          [".*/templates/.*%.yaml"] = "helm",
          [".*/templates/.*%.tpl"] = "helm",
        },
      })
    end,
  },
}
