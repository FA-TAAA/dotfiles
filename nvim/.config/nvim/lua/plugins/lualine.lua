return {

	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local kanagawa_paper = require("lualine.themes.kanagawa-paper-ink")
		require("lualine").setup({
			options = {
				theme = kanagawa_paper,
				-- ... your lualine config
			},
		})
	end,
}
