local map = vim.keymap.set
vim.g.mapleader = " "

-- Explorer
map("n", "<leader>ee", "<cmd> NvimTreeToggle <CR>", { desc = "Toggle Explorer" })
map("n", "<leader>ef", "<cmd> NvimTreeFocus <CR>", { desc = "Focus Explorer" })

map("i", "jk", "<Esc>", { desc = "Exit insert mode" })

-- Search Files
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find Files" })
map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "Find Recent Files" })
map("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
map("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })

-- Split management
map("n", "<leader>sv", "<cmd>vsp<CR>", { desc = "Split Vertically" })
map("n", "<leader>sh", "<cmd>sp<CR>", { desc = "Split Horizontally" })
map("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
map("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Tabs management
map("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open A New Tab" })
map("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close Current Tab" })
map("n", "<leader>tn", "<cmd>tabnext<CR>", { desc = "Go To Next Tab" })
map("n", "<leader>tp", "<cmd>tabprevious<CR>", { desc = "Go To Previous Tab" })

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
