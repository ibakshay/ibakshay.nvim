return {
  "pwntester/octo.nvim",
  cmd = "Octo",
  opts = {
    picker = "telescope",
    enable_builtin = true,
  },
  keys = {
    { "<leader>oi", "<CMD>Octo issue list<CR>", desc = "List GitHub Issues" },
    { "<leader>op", "<CMD>Octo pr list<CR>", desc = "List GitHub PullRequests" },
    { "<leader>od", "<CMD>Octo discussion list<CR>", desc = "List GitHub Discussions" },
    { "<leader>on", "<CMD>Octo notification list<CR>", desc = "List GitHub Notifications" },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "nvim-tree/nvim-web-devicons",
  },
}
