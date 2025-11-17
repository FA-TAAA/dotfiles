return {
	"nvim-mini/mini.surround",
	version = false,
	event = "InsertCharPre",
	config = function()
		require("mini.surround").setup()
	end,
}
