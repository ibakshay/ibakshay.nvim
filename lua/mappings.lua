require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

--- add yours here


-- Fix the <leader>ss mapping to correctly call Telescope Document Symbols
map("n", "<leader>ss", function()
    require('telescope.builtin').lsp_document_symbols()
end, { desc = "Telescope: Document Symbols", silent = true })

-- filter for functions only
map("n", "<leader>sf", function()
    require('telescope.builtin').lsp_document_symbols({
        symbols = { "Function", "Method" } -- Filter for just Go functions and methods
    })
end, { desc = "Telescope: File Functions (Filtered)" })


-- Tmux/Nvim seamless pane navigation
map("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>", { desc = "Navigate to left pane" })
map("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>", { desc = "Navigate to lower pane" })
map("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>", { desc = "Navigate to upper pane" })
map("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>", { desc = "Navigate to right pane" })

