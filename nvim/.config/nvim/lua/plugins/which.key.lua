return {
	"folke/which-key.nvim",
	dependencies = { "nvim-mini/mini.icons" },
	event = "VeryLazy",
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
	config = function()
		layout = {
			width = { min = 20, max = 30 },
			spacing = 3,
		}
	end,
}
