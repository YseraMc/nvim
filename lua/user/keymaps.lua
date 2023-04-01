-- Modes
--   normal_mode = 'n',
--   insert_mode = 'i',
--   visual_mode = 'v',
--   visual_block_mode = 'x',
--   term_mode = 't',
--   command_mode = 'c',

vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })
-- vim.keymap.set("n", ";", ":", { noremap = true })
vim.keymap.set("n", "x", '"_x', { noremap = true })
vim.keymap.set("n", "<Esc><Esc>", ":nohlsearch<CR>", { noremap = true })

-- dict
vim.keymap.set("n", "<leader>dc", ":tabnew ~/.config/cspell/cspell.json<CR>")

-- ファイラー
vim.keymap.set("n", "<leader>b", ":Telescope file_browser<CR>", { noremap = true })

-- fzf
vim.keymap.set("n", "<leader>f", ":Telescope find_files<CR>", { noremap = true })

-- バッファ切り替え
vim.keymap.set("n", "<C-n>", ":bnext<CR>", { noremap = true })
vim.keymap.set("n", "<C-p>", ":bprev<CR>", { noremap = true })

-- バッファを保存して閉じる
vim.keymap.set("n", "<leader>w", ":Format<CR>:update<CR>:bd<CR>", { noremap = true })

-- Term
vim.keymap.set("n", "<C-\\>", ":ToggleTerm direction=float<CR>", { noremap = true })
function _G.set_terminal_keymaps()
	local opts = { buffer = 0 }
	vim.keymap.set("t", "<C-\\>", [[<C-\><C-n> :ToggleTerm<CR>]], opts)
	vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
	vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
	vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
	vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
	vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

-- hop
vim.keymap.set("n", "<leader>h", ":HopChar1<CR>", { noremap = true })
vim.keymap.set("n", "<leader>l", ":HopLine<CR>", { noremap = true })

-- markdown
vim.keymap.set("n", "<leader>mp", ":MarkdownPreview<CR>", { noremap = true })
vim.keymap.set("n", "<leader>mps", ":MarkdownPreviewStop<CR>", { noremap = true })
