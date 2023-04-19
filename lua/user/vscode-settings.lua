-- クリップボード連携
vim.opt.clipboard:append({ "unnamedplus" })

--
-- keymap
--
vim.g.mapleader = " "

vim.keymap.set("n", "<Esc><Esc>", ":nohlsearch<CR>", { noremap = true })
vim.keymap.set("n", "x", '"_x', { noremap = true })

-- VSCodeコマンド
vim.keymap.set("n", "<leader>o", "<Cmd>call VSCodeNotify('workbench.action.quickOpen')<CR>")
vim.keymap.set("n", "H", "<Cmd>call VSCodeNotify('workbench.action.previousEditor')<CR>")
vim.keymap.set("n", "L", "<Cmd>call VSCodeNotify('workbench.action.nextEditor')<CR>")
vim.keymap.set("n", "<leader>b", "<Cmd>call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>")
vim.keymap.set("n", "<leader>e", "<Cmd>call VSCodeNotify('workbench.view.explorer')<CR>")
vim.keymap.set("n", "<leader>g", "<Cmd>call VSCodeNotify('workbench.view.search')<CR>")
vim.keymap.set("n", "<C-t>", "<Cmd>call VSCodeNotify('workbench.action.terminal.toggleTerminal')<CR>")

vim.keymap.set("n", "gh", "<Cmd>call VSCodeNotify('editor.action.showHover')<CR>")
vim.keymap.set("n", "gd", "<Cmd>call VSCodeNotify('editor.action.goToDeclaration')<CR>")

vim.keymap.set("n", "<leader>c", "<Cmd>call VSCodeNotify('workbench.action.showCommands')<CR>")

--
-- plugin
--
require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("numToStr/Comment.nvim")
	use("phaazon/hop.nvim")
	use("machakann/vim-sandwich")
end)

-- Packerオートコンパイル
vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = { "plugins.lua" },
	command = "PackerCompile",
})

require("Comment").setup({})
require("hop").setup({})

vim.keymap.set("n", "<leader>h", ":HopChar1<CR>", { noremap = true })
vim.keymap.set("n", "<leader>l", ":HopLine<CR>", { noremap = true })
