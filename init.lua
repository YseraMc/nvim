require("user.options")
require("user.keymaps")
require("user.plugins")
require("user.masson")
require("user.lsp")
require("user.null-ls")
require("user.formatter")
require("user.cmp")
require("user.snippy")
require("user.treesitter")

if not vim.g.vscode then
	--  vim only settings
else
	require("user.vscode-settings")
end
