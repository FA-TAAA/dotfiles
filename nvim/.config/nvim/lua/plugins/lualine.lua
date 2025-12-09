return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = "BufEnter",
	config = function()
		require("lualine").setup({
			sections = {
				lualine_x = {
					"lsp_status",
					"encoding",
					"fileformat",
					"filetype",
				},
			},

			extensions = {
				"nvim-tree",
				"lazy",
				"mason",
				"trouble",
			},
		})
	end,
}
