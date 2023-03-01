local cmp = require("cmp")
local cmp_sources = {
	{ name = "nvim_lsp" },
	{ name = "buffer" },
	{ name = "path" },
	{ name = "cmdline" },
	-- { name = "snippy" },
}
local cmp_mappings = {
	["<S-Tab>"] = cmp.mapping.select_prev_item(),
	["<Tab>"] = cmp.mapping.select_next_item(),
	["<C-l>"] = cmp.mapping.complete(),
}
cmp.setup({
	sources = cmp_sources,
	mapping = cmp_mappings,
})

local cmp_cmdline_sources = {
	{ name = "path" },
	{ name = "cmdline" },
}
cmp.setup.cmdline(":", {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp_cmdline_sources,
})
