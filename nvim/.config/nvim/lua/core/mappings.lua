vim.g.mapleader = " "
local map = vim.keymap.set

-- Split management
map("n", "<leader>sv", "<cmd>vsp<CR>", { desc = "Split Vertically" })
map("n", "<leader>sh", "<cmd>sp<CR>", { desc = "Split Horizontally" })
map("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
map("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Buffers & Tabs management
map("n", "<leader>bp", "<cmd>bPrevious<CR>", { desc = "Go To The Previous Tab" })
map("n", "<leader>bn", "<cmd>bNext<CR>", { desc = "Go To The Next Tab" })

-- Moving
map("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>", { desc = "Move To The Left" })
map("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>", { desc = "Move To The Bottom" })
map("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>", { desc = "Move To The Top" })
map("n", "<C-k>", "<cmd>TmuxNavigateRight<CR>", { desc = "Move To The Right" })

-- Fuzzy Finding
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find Files" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Find Buffers" })
map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "Find Old Files" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Find Old Files" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Find Old Files" })
map("n", "<leader>fs", "<cmd>Telescope grep_string<CR>", { desc = "Find Old Files" })

-- Tree
map("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Open File Tree" })

-- Formatting
map("n", "<leader>fm", function()
	require("conform").format()
end, { desc = "Format file" })
