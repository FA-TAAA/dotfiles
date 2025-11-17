-- Normal Commands
vim.api.nvim_create_user_command("TSInstallAll", function()
	local spec = require("lazy.core.config").plugins["nvim-treesitter"]
	local install = require("nvim-treesitter.install")
	for _, lang in ipairs(spec.opts.ensure_installed) do
		install.update({ with_sync = false })(lang)
	end
end, { desc = "Installs all languages in ensure_installed" })

-- Auto Commands

-- Yank Highlight
vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("highlight_yank", { clear = true }),
	pattern = "*",
	desc = "highlight selection on yank",
	callback = function()
		vim.highlight.on_yank({ timeout = 200, visual = true })
	end,
})

-- No Auto Comment On New Line
vim.api.nvim_create_autocmd("FileType", {
	group = vim.api.nvim_create_augroup("no_auto_comment", {}),
	callback = function()
		vim.opt_local.formatoptions:remove({ "c", "r", "o" })
	end,
})

-- Remove Highlights When Entering Insert Mode
vim.api.nvim_create_autocmd("InsertCharPre", {
	group = vim.api.nvim_create_augroup("ClearHlOnInsert", { clear = true }),
	pattern = "*",
	callback = function()
		vim.cmd("nohlsearch")
	end,
	desc = "Remove highlights when entering insert mode",
})
