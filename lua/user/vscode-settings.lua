-- クリップボード連携
vim.opt.clipboard:append({ "unnamedplus" })

--
-- keymap
--
vim.g.mapleader = " "

-- xキーで消した文字をレジスタに入れない
vim.keymap.set("n", "x", '"_x', { noremap = true })

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
