return {
  "pwntester/octo.nvim",
  cmd = "Octo",
  opts = {
    picker = "telescope",
    enable_builtin = true,
    mappings = {
      -- German keyboard: ö = [, ä = ]
      issue = {
        next_comment = { lhs = "äc", desc = "go to next comment" },
        prev_comment = { lhs = "öc", desc = "go to previous comment" },
      },
      pull_request = {
        next_comment = { lhs = "äc", desc = "go to next comment" },
        prev_comment = { lhs = "öc", desc = "go to previous comment" },
      },
      review_thread = {
        next_comment = { lhs = "äc", desc = "go to next comment" },
        prev_comment = { lhs = "öc", desc = "go to previous comment" },
        select_next_entry = { lhs = "äq", desc = "move to next changed file" },
        select_prev_entry = { lhs = "öq", desc = "move to previous changed file" },
        select_first_entry = { lhs = "öQ", desc = "move to first changed file" },
        select_last_entry = { lhs = "äQ", desc = "move to last changed file" },
        select_next_unviewed_entry = { lhs = "äu", desc = "move to next unviewed file" },
        select_prev_unviewed_entry = { lhs = "öu", desc = "move to previous unviewed file" },
      },
      review_diff = {
        next_thread = { lhs = "ät", desc = "move to next thread" },
        prev_thread = { lhs = "öt", desc = "move to previous thread" },
        select_next_entry = { lhs = "äq", desc = "move to next changed file" },
        select_prev_entry = { lhs = "öq", desc = "move to previous changed file" },
        select_first_entry = { lhs = "öQ", desc = "move to first changed file" },
        select_last_entry = { lhs = "äQ", desc = "move to last changed file" },
        select_next_unviewed_entry = { lhs = "äu", desc = "move to next unviewed file" },
        select_prev_unviewed_entry = { lhs = "öu", desc = "move to previous unviewed file" },
      },
      file_panel = {
        select_next_entry = { lhs = "äq", desc = "move to next changed file" },
        select_prev_entry = { lhs = "öq", desc = "move to previous changed file" },
        select_first_entry = { lhs = "öQ", desc = "move to first changed file" },
        select_last_entry = { lhs = "äQ", desc = "move to last changed file" },
        select_next_unviewed_entry = { lhs = "äu", desc = "move to next unviewed file" },
        select_prev_unviewed_entry = { lhs = "öu", desc = "move to previous unviewed file" },
      },
      discussion = {
        next_comment = { lhs = "äc", desc = "go to next comment" },
        prev_comment = { lhs = "öc", desc = "go to previous comment" },
      },
    },
  },
  keys = {
    { "<leader>oi", "<CMD>Octo issue list<CR>", desc = "List GitHub Issues" },
    { "<leader>op", "<CMD>Octo pr list<CR>", desc = "List GitHub PullRequests" },
    { "<leader>od", "<CMD>Octo discussion list<CR>", desc = "List GitHub Discussions" },
    { "<leader>on", "<CMD>Octo notification list<CR>", desc = "List GitHub Notifications" },
    { "<leader>orc", "<CMD>Octo review comments<CR>", desc = "List pending review comments" },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "nvim-tree/nvim-web-devicons",
  },
}
