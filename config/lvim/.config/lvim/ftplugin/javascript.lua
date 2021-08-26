lvim.lang.javascript.formatters = {
	{
		exe = "prettier",
		args = { "--stdin-filepath", "--write" },
	},
}

lvim.lang.javascript.linters = {
	{
		exe = "eslint_d",
		args = {},
	},
}

lvim.lang.javascript.lsp.setup.root_dir = function()
	vim.cmd("let root_dir = FindRootDirectory()")
	local proj_dir = vim.api.nvim_get_var("root_dir")
	if proj_dir ~= nil and proj_dir ~= "" then
		return proj_dir
	end
	return vim.fn.getcwd()
end
