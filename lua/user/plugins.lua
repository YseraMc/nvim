require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("nvim-telescope/telescope.nvim")
	use("nvim-lua/plenary.nvim")
	use("nvim-telescope/telescope-file-browser.nvim")
	use("ap/vim-buftabline")
	use("neovim/nvim-lspconfig")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/cmp-nvim-lsp")
	use("dcampos/nvim-snippy")
	use("dcampos/cmp-snippy")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("jose-elias-alvarez/null-ls.nvim")
	use("mhartington/formatter.nvim")
	use("j-hui/fidget.nvim")
	use("windwp/nvim-autopairs")
	use("numToStr/Comment.nvim")
	use("machakann/vim-sandwich")
	use("nvim-treesitter/nvim-treesitter")
	use("h-hg/fcitx.nvim")
	use("rebelot/kanagawa.nvim")
	use({
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	})
	use("folke/zen-mode.nvim")
end)

-- Packerオートコンパイル
vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = { "plugins.lua" },
	command = "PackerCompile",
})

require("nvim-autopairs").setup({})
require("Comment").setup({})
require("telescope").load_extension("file_browser")
