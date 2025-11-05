return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",
	opts = {
		ensure_installed = {
			"lua",
			"javascript",
			"typescript",
			"json",
			"jsx",
			"html",
			"css",
			"vim",
			"vimdoc",
			"query",
			"markdown",
			"markdown_inline",
		},
	},
}
