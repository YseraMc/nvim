require("base.options")
require("base.keymaps")
require("base.plugins")
require("base.masson")
require("base.lsp")
require("base.null-ls")
require("base.formatter")
require("base.cmp")
require("base.snippy")
require("base.treesitter")

if not vim.g.vscode then
	-- osc52
	function copy()
		if vim.v.event.operator == "y" and vim.v.event.regname == "+" then
			require("osc52").copy_register("+")
		end
	end
	vim.api.nvim_create_autocmd("TextYankPost", { callback = copy })
else
	require("base.vscode-settings")
end

--
-- local固有の設定ファイルを読み込む
--

-- 特定のディレクトリ以下のファイルを再帰的に取得する関数
local function getFilesInDirectory(dir)
	local files = {}
	local pfile = io.popen('dir "' .. dir .. '" /b /a-d')
	for file in pfile:lines() do
		table.insert(files, dir .. "/" .. file)
	end
	pfile:close()
	return files
end

-- 特定のディレクトリ以下のLuaファイルをすべてrequireする関数
local function requireAllLuaFilesInDirectory(dir)
	local files = getFilesInDirectory(dir)

	for _, file in ipairs(files) do
		if file:match("%.lua$") then -- .lua拡張子を持つ場合のみ処理します
			local moduleName = file:match("(.+)%..+$") -- 拡張子を取り除いてモジュール名を取得
			require(moduleName)
		end
	end
end

local directoryPath = "./local"
requireAllLuaFilesInDirectory(directoryPath)
