return {
  "lewis6991/gitsigns.nvim",
  config = function ()
    require("gitsigns").setup()

    vim.keymap.set("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", { desc = " [Gitsigns] Preview Hunk" })
    vim.keymap.set("n", "<leader>gi", "<cmd>Gitsigns preview_hunk_inline<CR>", { desc = " [Gitsigns] Preview Hunk Inline" })
    vim.keymap.set("n", "<leader>gb", "<cmd>Gitsigns blame<CR>", { desc = " [Gitsigns] Blame file" })
  end
}
