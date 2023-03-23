require("nebulous").setup({
	variant = "twilight",
	-- italic = {
	-- 	comments = true,
	-- 	keywords = false,
	-- 	functions = true,
	-- 	variables = false,
	-- },
	custom_colors = {
		-- Comment = { fg = "#ff1493" },
	},
})


-- treesitterのハイライトを上書き
vim.cmd('hi @comment guifg=#f1493')
