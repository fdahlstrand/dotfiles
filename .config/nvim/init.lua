require 'user.options'

require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'neovim/nvim-lspconfig'
	use 'euclidianAce/BetterLua.vim'
	use 'sainnhe/gruvbox-material'
end)

-- Lua Language server configuration
local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")
require'lspconfig'.sumneko_lua.setup {
	cmd = { os.getenv("HOME").."/repos/lua-language-server/bin/lua-language-server" },
	settings = {
		Lua = {
			runtime = {
				version = 'LuaJIT',
				path = runtime_path,
			},
			diagnostics = {
				globals = { 'vim' },
			},
			worspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			},
			telemetry = {
				enable = false,
			},
		},
	},
}


vim.cmd [[colorscheme gruvbox-material]]
vim.cmd [[
augroup SetCursorLineNbr
	autocmd! ColorScheme * highlight clear CursorLineNR
augroup END
]]

