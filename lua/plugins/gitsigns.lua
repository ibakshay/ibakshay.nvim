return {
  "lewis6991/gitsigns.nvim",
  config = function ()
    require("gitsigns").setup()
    -- Navigation
    vim.keymap.set("n", "äc", "<cmd>Gitsigns next_hunk<CR>", { desc = "[Gitsigns] Next hunk" })
    vim.keymap.set("n", "öc", "<cmd>Gitsigns prev_hunk<CR>", { desc = "[Gitsigns] Previous hunk" })

    vim.keymap.set("n", "<leader>gr", "<cmd>Gitsigns reset_hunk<CR>", { desc = "[Gitsigns] Reset hunk" })
    vim.keymap.set("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", { desc = " [Gitsigns] Preview Hunk" })
    vim.keymap.set("n", "<leader>gi", "<cmd>Gitsigns preview_hunk_inline<CR>", { desc = " [Gitsigns] Preview Hunk Inline" })
    vim.keymap.set("n", "<leader>gb", "<cmd>Gitsigns blame<CR>", { desc = " [Gitsigns] Blame file" })

    -- Diff
    vim.keymap.set("n", "<leader>gd", "<cmd>Gitsigns diffthis<CR>", { desc = "[Gitsigns] Diff this" })
  end
}
