return {
	{
		"williamboman/mason.nvim",
		cmd = { "Mason", "MasonInstall", "MasonUpdate", "MasonLog" },
		opts = {
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.config["lua_ls"] =
				{
					cmd = { "lua-language-server" },
					settings = {
						Lua = {
							diagnostics = {
								globals = { "vim" },
							},
						},
					},
				}, vim.lsp.enable("lua_ls")
		end,
	},
}
