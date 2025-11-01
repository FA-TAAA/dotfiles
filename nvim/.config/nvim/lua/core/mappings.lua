local map = vim.keymap.set
vim.g.mapleader = " "

-- Explorer
map("n", "<leader>ee", function()
	Snacks.explorer()
end, { desc = "Toggle Explorer" })

map("i", "jk", "<Esc>", { desc = "Exit insert mode" })

-- Search Files
map("n", "<leader>fF", function()
	Snacks.picker()
end, { desc = "Open Picker" })

map("n", "<leader>ff", function()
	Snacks.picker("files")
end, { desc = "Find Files" })

map("n", "<leader>fo", function()
	Snacks.picker("recent")
end, { desc = "Find Recent" })

map("n", "<leader>fb", function()
	Snacks.picker("buffers")
end, { desc = "Find Buffers" })

map("n", "<leader>fb", function()
	Snacks.picker("buffers")
end, { desc = "Find Buffers" })

-- Split management
map("n", "<leader>sv", "<cmd>vsp<CR>", { desc = "Split Vertically" })
map("n", "<leader>sh", "<cmd>sp<CR>", { desc = "Split Horizontally" })
map("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
map("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Buffers & Tabs management
map("n", "<leader>bn", "<cmd>BufferNext<CR>", { desc = "Go To Next Buffer" })
map("n", "<leader>bp", "<cmd>BufferPrevious<CR>", { desc = "Go To Previous Buffer" })
map("n", "<leader>bxx", "<cmd>BufferClose<CR>", { desc = "Close Current Buffer" })
map(
	"n",
	"<leader>bxa",
	"<cmd>BufferCloseAllButCurrentOrPinned<CR>",
	{ desc = "Close All But Current Or Pinned Buffers" }
)

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
