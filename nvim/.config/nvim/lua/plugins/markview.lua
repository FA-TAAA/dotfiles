return {
	"OXY2DEV/markview.nvim",
	lazy = false,
	dependencies = { "saghen/blink.cmp" },
	opts = {
		preview = {
			filetypes = { "md", "markdown", "codecompanion" },
			modes = { "n", "no", "c", "i" },
			hybrid_modes = { "i", "n" },
			linewise_hybrid_mode = true,
		},
	},
}
