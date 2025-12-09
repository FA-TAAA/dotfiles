return {
	{
		"williamboman/mason.nvim",
		cmd = { "Mason", "MasonInstall", "MasonUpdate", "MasonLog" },
		opts = {
			registries = {
				"github:mason-org/mason-registry",
				"github:Crashdummyy/mason-registry",
			},
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
			local capabilities = vim.lsp.protocol.make_client_capabilities()

			capabilities.textDocument.completion.completionItem = {
				documentationFormat = { "markdown", "plaintext" },
				snippetSupport = true,
				preselectSupport = true,
				insertReplaceSupport = true,
				labelDetailsSupport = true,
				deprecatedSupport = true,
				commitCharactersSupport = true,
				tagSupport = { valueSet = { 1 } },
				resolveSupport = {
					properties = {
						"documentation",
						"detail",
						"additionalTextEdits",
					},
				},
			}

			capabilities = require("blink.cmp").get_lsp_capabilities(capabilities)

			vim.lsp.config("*", { capabilities = capabilities })
			vim.lsp.config["lua_ls"] = {
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			}

			vim.lsp.config["superhtml"] = {
				cmd = { "superhtml --syntax-only", "lsp" },
				filetypes = { "html", "shtml", "htm" },
				root_dir = vim.fs.dirname(vim.fs.find({ ".git" }, { upward = true })[1]),
			}

			local servers = {
				"lua_ls",
				"vtsls",
				"cssls",
				"markdown_oxide",
				"clangd",
				"superhtml",
				"emmet_language_server",
				"roslyn_ls",
				-- "html",
			}
			vim.lsp.enable(servers)
		end,
	},
}
