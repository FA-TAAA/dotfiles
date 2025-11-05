return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	cmd = { "NvimTreeToggle", "NvimTreeOpen" },
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({})
	end,
}
