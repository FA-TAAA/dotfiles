return {
	"nvim-mini/mini.pairs",
	version = false,
	event = "InsertCharPre",
	config = function()
		require("mini.pairs").setup()
	end,
}
