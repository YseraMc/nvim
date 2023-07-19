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
	-- osc52
	function copy()
		if vim.v.event.operator == "y" and vim.v.event.regname == "+" then
			require("osc52").copy_register("+")
		end
	end
	vim.api.nvim_create_autocmd("TextYankPost", { callback = copy })
else
	require("user.vscode-settings")
end
