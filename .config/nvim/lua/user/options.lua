local option = {
	belloff = 'all',

	termguicolors = true,

	wrap = false,
	tabstop = 4,
	shiftwidth = 4,
	smartindent = true,
	expandtab = true,

	number = true,
	relativenumber = true,

	cursorline = true,
}

for k, v in pairs(option) do
	vim.opt[k] = v
end
