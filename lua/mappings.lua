require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

--- add yours here

-- Kubectl mappings
map("n", "<leader>ka", "<cmd>w !kubectl apply -f -<CR>", { desc = "Kubectl apply buffer" })
map("n", "<leader>kd", "<cmd>w !kubectl delete -f -<CR>", { desc = "Kubectl delete buffer" })

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



