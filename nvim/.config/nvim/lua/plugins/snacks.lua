return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		---@type snacks.Config
		opts = {
			explorer = {
				enabled = true,
				replace_netrw = true, -- Replace netrw with the snacks explorer
				trash = true,
			},
			indent = { enabled = true },
			picker = { enabled = true },
		},
	},
}
