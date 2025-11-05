local map = vim.keymap.set
vim.g.mapleader = " "

-- Split management
map("n", "<leader>sv", "<cmd>vsp<CR>", { desc = "Split Vertically" })
map("n", "<leader>sh", "<cmd>sp<CR>", { desc = "Split Horizontally" })
map("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
map("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Buffers & Tabs management

-- Moving
map("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>", { desc = "Move To The Left" })
map("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>", { desc = "Move To The Bottom" })
map("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>", { desc = "Move To The Top" })
map("n", "<C-k>", "<cmd>TmuxNavigateRight<CR>", { desc = "Move To The Right" })

-- LSP

-- Blink

-- Formatting
map("n", "<leader>fm", function()
	require("conform").format()
end, { desc = "Format file" })
