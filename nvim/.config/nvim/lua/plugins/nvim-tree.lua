return {
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("nvim-tree").setup({
				renderer = {
					diagnositcs = {
						enable = true,
					},
				},
				diagnositcs = {
					enable = true,
				},
			})
		end,
	},
}
