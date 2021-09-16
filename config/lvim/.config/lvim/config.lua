-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.lint_on_save = true
lvim.colorscheme = "spacegray"
lvim.lsp.diagnostics.virtual_text = false
lvim.lsp.diagnostics.update_in_insert = false

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

-- builtin plugins
-- dashboard
lvim.builtin.dashboard.active = true
lvim.builtin.gitsigns.active = false
lvim.builtin.comment.active = false
lvim.builtin.nvimtree.ignore = {}

-- terminal
lvim.builtin.terminal.active = true
lvim.builtin.terminal.size = 15
lvim.builtin.terminal.direction = "horizontal"

-- nvimtree
lvim.builtin.nvimtree.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0
lvim.builtin.nvimtree.quit_on_tab = 1
vim.g.nvim_tree_special_files = {}

-- bufferline
lvim.builtin.bufferline.active = false

-- teltescope
lvim.builtin.telescope.defaults.file_ignore_patterns = { "package.json", "yarn.lock", ".git" }
lvim.builtin.telescope.on_config_done = function()
	local actions = require("telescope.actions")
	lvim.builtin.telescope.defaults.mappings.i["<C-j>"] = actions.move_selection_next
	lvim.builtin.telescope.defaults.mappings.i["<C-k>"] = actions.move_selection_previous
	lvim.builtin.telescope.defaults.mappings.i["<C-n>"] = actions.cycle_history_next
	lvim.builtin.telescope.defaults.mappings.i["<C-p>"] = actions.cycle_history_prev
end

-- treesitter
lvim.builtin.treesitter.ensure_installed = "maintained"
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.treesitter.autotag = { enable = true }
lvim.builtin.treesitter.context_commentstring = {
	enable = true,
	enable_autocmd = false,
	config = {
		javascript = {
			__default = "// %s",
			jsx_element = "{/* %s */}",
			jsx_fragment = "{/* %s */}",
			jsx_attribute = "// %s",
			comment = "// %s",
		},
		typescriptreact = {
			__default = "// %s",
			jsx_element = "{/* %s */}",
			jsx_fragment = "{/* %s */}",
			jsx_attribute = "// %s",
			comment = "// %s",
		},
	},
}
lvim.builtin.treesitter.playground.enable = true

-- whichkey
lvim.builtin.which_key.mappings["T"].h = { ":TSHighlightCapturesUnderCursor<cr>", "Get property" }
lvim.builtin.which_key.vmappings["/"] = { "<Plug>kommentary_visual_default<C-c>", "Comment" }
lvim.builtin.which_key.mappings["/"] = { "<Plug>kommentary_line_default", "Comment" }
lvim.builtin.which_key.mappings["r"] = {
	name = "Replace",
	r = { "<cmd>lua require('spectre').open()<cr>", "Replace" },
	w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Replace Word" },
	f = { "<cmd>lua require('spectre').open_file_search()<cr>", "Replace Buffer" },
}
lvim.builtin.which_key.mappings["s"].b = { ":lua require('telescope.builtin').buffers()<cr>", "List buffer" }
lvim.builtin.which_key.mappings["x"] = {
	name = "Trouble",
	x = { "<cmd>TroubleToggle<cr>", "TroubleToggle" },
	w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Trouble workspace" },
	d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Trouble document" },
	l = { "<cmd>Trouble loclist<cr>", "Trouble locklist" },
	q = { "<cmd>Trouble quickfix<cr>", "Trouble quickfix" },
	R = { "<cmd>Trouble lsp_references<cr>", "Lsp references" },
}

-- plugins
lvim.plugins = {
	{
		"149311CB/github-nvim-theme",
		config = function()
			require("github-theme").setup({
				themeStyle = os.getenv("THEME"),
				functionStyle = "bold",
				-- ... your github-theme config
			})
		end,
	},

	-- Treesister modules
	{
		"windwp/nvim-ts-autotag",
		event = "InsertEnter",
		after = "nvim-treesitter",
		ft = { "html", "javascript", "markdown", "javascriptreact", "typescript", "typescriptreact" },
		-- event = "InsertEnter",
	},
	{
		"JoosepAlviste/nvim-ts-context-commentstring",
		-- after = "nvim-treesitter",
		-- event = "BufRead",
	},
	{ "nvim-treesitter/playground" },

	-- Other plugins
	{
		"tpope/vim-surround",
		event = "BufRead",
	},
	{
		"norcalli/nvim-colorizer.lua",
		-- event = "BufRead",
		ft = {
			"yaml",
			"css",
			"html",
			"lua",
			"javascript",
			"javascriptreact",
			"typescript",
			"typescriptreact",
			"json",
			"dosini",
		},
		config = function()
			require("user.colorizer").config()
		end,
	},
	{
		"karb94/neoscroll.nvim",
		config = function()
			require("neoscroll").setup()
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			require("user.blank").config()
		end,
	},
	{
		"unblevable/quick-scope",
		config = function()
			require("user.quick-scope")
		end,
	},
	{
		"b3nj5m1n/kommentary",
		event = "BufRead",
		config = function()
			require("user.kommentary").config()
		end,
	},
	{
		"windwp/nvim-spectre",
		event = "BufRead",
		config = function()
			require("user.spectre")
		end,
	},
	{
		"akinsho/nvim-bufferline.lua",
		config = function()
			require("user.bufferline").config()
		end,
	},

	{
		"metakirby5/codi.vim",
		cmd = "Codi",
	},
	{ "mg979/vim-visual-multi", branch = "master" },

	-- JavaScript plugins
	{
		"dsznajder/vscode-es7-javascript-react-snippets",
		ft = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
	},
	{
		"ludovicchabant/vim-gutentags",
		event = "BufRead",
		ft = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
	},
	{
		"kristijanhusak/vim-js-file-import",
		event = "BufRead",
		ft = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
		run = { "npm install" },
		-- cmd = { "<Plug>(JsFileImport)" },
	},
	-- Markdown plugins
	{ "preservim/vim-pencil", ft = { "markdown" } },
	{ "dhruvasagar/vim-table-mode", ft = { "markdown" } },
	{ "iamcco/markdown-preview.nvim", run = { "cd app && yarn install" }, ft = { "markdown" } },
	{ "dkarter/bullets.vim", ft = { "markdown" } },
	-- {
	-- "tpope/vim-markdown",
	-- config = function()
	-- 	vim.cmd([[
	--       let g:markdown_fenced_languages = ['html', 'python', 'bash=sh','sql']
	--       let g:markdown_syntax_conceal = 0
	--     ]])
	-- end,
	-- filetypes = { "md", "markdown" },
	-- },
}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- lvim.autocommands.custom_groups = {
--   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- }

require("options")
