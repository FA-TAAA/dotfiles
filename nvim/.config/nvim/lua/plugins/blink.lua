return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	event = "InsertEnter",

	version = "1.*",
	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		-- All presets have the following mappings:
		-- C-space: Open menu or open docs if already open
		-- C-n/C-p or Up/Down: Select next/previous item
		-- C-e: Hide menu
		-- C-k: Toggle signature help (if signature.enabled = true)
		--
		-- See :h blink-cmp-config-keymap for defining your own keymap
		keymap = {
			preset = "default",
			["<Cr>"] = { "select_and_accept", "fallback" },
			--["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
		},

		appearance = {
			nerd_font_variant = "mono",
		},

		signature = { enabled = true },

		-- (Default) Only show the documentation popup when manually triggered
		completion = {
			documentation = { auto_show = true },
			-- menu = {
			-- 	draw = {
			-- 		components = {
			-- 			-- customize the drawing of kind icons
			-- 			kind_icon = {
			-- 				text = function(ctx)
			-- 					-- default kind icon
			-- 					local icon = ctx.kind_icon
			-- 					-- if LSP source, check for color derived from documentation
			-- 					if ctx.item.source_name == "LSP" then
			-- 						local color_item = require("nvim-highlight-colors").format(
			-- 							ctx.item.documentation,
			-- 							{ kind = ctx.kind }
			-- 						)
			-- 						if color_item and color_item.abbr ~= "" then
			-- 							icon = color_item.abbr
			-- 						end
			-- 					end
			-- 					return icon .. ctx.icon_gap
			-- 				end,
			-- 				highlight = function(ctx)
			-- 					-- default highlight group
			-- 					local highlight = "BlinkCmpKind" .. ctx.kind
			-- 					-- if LSP source, check for color derived from documentation
			-- 					if ctx.item.source_name == "LSP" then
			-- 						local color_item = require("nvim-highlight-colors").format(
			-- 							ctx.item.documentation,
			-- 							{ kind = ctx.kind }
			-- 						)
			-- 						if color_item and color_item.abbr_hl_group then
			-- 							highlight = color_item.abbr_hl_group
			-- 						end
			-- 					end
			-- 					return highlight
			-- 				end,
			-- 			},
			-- 		},
			-- 	},
			-- },
		},

		-- Default list of enabled providers defined so that you can extend it
		-- elsewhere in your config, without redefining it, due to `opts_extend`
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},

		-- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
		-- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
		-- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
		--
		-- See the fuzzy documentation for more information
		fuzzy = { implementation = "prefer_rust_with_warning" },
	},
	opts_extend = { "sources.default" },
}
