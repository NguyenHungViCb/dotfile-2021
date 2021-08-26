--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
--lvim.log.level = "warn"
lvim.format_on_save = true
lvim.lint_on_save = true
lvim.colorscheme = "spacegray"
lvim.lsp.diagnostics.virtual_text = false
lvim.lsp.diagnostics.update_in_insert = false

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
--lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
-- unmap a default keymapping
-- lvim.keys.normal_mode["<C-Up>"] = ""
-- edit a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>"

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>lua require'telescope'.extensions.project.project{}<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnosticss" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnosticss" },
-- }

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true

lvim.builtin.terminal.active = true
lvim.builtin.terminal.size = 15
lvim.builtin.terminal.direction = "horizontal"

lvim.builtin.nvimtree.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0
lvim.builtin.nvimtree.quit_on_tab = 1

lvim.builtin.bufferline.active = false

lvim.builtin.telescope.defaults.file_ignore_patterns = { "node_modules", "package.json", "yarn.lock", ".git" }

-- if you don't want all the parsers change this to a table of the ones you want
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
	},
}
lvim.builtin.treesitter.playground.enable = true

lvim.lang.css.formatters = {
	{
		exe = "prettier",
		args = { "--stdin-filepath" },
	},
}

lvim.lang.lua.formatters = {
	{
		exe = "stylua",
		args = {},
	},
}

lvim.lang.javascript.formatters = {
	{
		exe = "prettier",
		args = { "--stdin-filepath", "--write" },
	},
}

local cmd = vim.cmd
cmd("set relativenumber")

-- generic LSP settings
-- you can set a custom on_attach function that will be used for all the language servers
-- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- set a formatter if you want to override the default lsp one (if it exists)
-- lvim.lang.python.formatters = {
--   {
--     exe = "black",
--     args = {}
--   }
-- }
-- set an additional linter
-- lvim.lang.python.linters = {
--   {
--     exe = "flake8",
--     args = {}
--   }
-- }

-- Additional Plugins
-- lvim.plugins = {
--     {"folke/tokyonight.nvim"}, {
--         "ray-x/lsp_signature.nvim",
--         config = function() require"lsp_signature".on_attach() end,
--         event = "InsertEnter"
--     }
-- }
lvim.plugins = {
	{
		"149311CB/github-nvim-theme",
		config = function()
			require("github-theme").setup({
				themeStyle = "dimmed",
				functionStyle = "bold",
			})
		end,
	},

	-- Treesister modules
	{
		"windwp/nvim-ts-autotag",
		after = "nvim-treesitter",
		ft = { "html", "javascript", "markdown" },
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
		"blackCauldron7/surround.nvim",
		event = "BufRead",
		config = function()
			require("surround").setup({})
		end,
	},
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup({ "*" }, {
				RGB = true, -- #RGB hex codes
				RRGGBB = true, -- #RRGGBB hex codes
				RRGGBBAA = true, -- #RRGGBBAA hex codes
				rgb_fn = true, -- CSS rgb() and rgba() functions
				hsl_fn = true, -- CSS hsl() and hsla() functions
				css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
				css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
			})
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
			require("indent_blankline").setup({
				-- show_end_of_line = true,
				buftype_exclude = { "terminal" },
				filetype_exclude = { "dashboard", "packer" },
				show_current_context = true,
				show_trailing_blankline_indent = false,
				context_patterns = {
					"^class",
					"^function",
					"^method",
					"^if",
					"^dictionary",
					"^for",
					"^return",
					"^html_tag",
					"^table",
					"^jsx_fragment",
					"^jsx_element",
					"^element",
					"^lexical_declaration",
					"^jsx_expression",
					"^block",
					"^keyframe_block_list",
					"^jsx_self_closing_element",
					"^expression_statement",
					"^arrow_function",
				},
			})
			vim.cmd([[
			]])
		end,
	},
	{
		"crispgm/nvim-tabline",
		config = function()
			require("tabline").setup({})
		end,
	},
	{
		"unblevable/quick-scope",
		config = function()
			vim.g.qs_highlight_on_keys = { "f", "F", "t", "T" }
			vim.cmd([[
          highlight QuickScopePrimary guifg='#3b8eea' gui=bold ctermfg=155 cterm=bold
          highlight QuickScopeSecondary guifg='#f14c4c' gui=bold ctermfg=81 cterm=bold
      ]])
		end,
	},
	{ "TC72/telescope-tele-tabby.nvim" },
	{
		"b3nj5m1n/kommentary",
		config = function()
			require("kommentary.config").configure_language("javascript", {
				single_line_comment_string = "auto",
				multi_line_comment_strings = "auto",
				hook_function = function()
					require("ts_context_commentstring.internal").update_commentstring()
				end,
			})
			require("kommentary.config").configure_language("html", {
				single_line_comment_string = "auto",
				multi_line_comment_strings = "auto",
				hook_function = function()
					require("ts_context_commentstring.internal").update_commentstring()
				end,
			})
		end,
	},

	-- JavaScript plugins
	{
		"dsznajder/vscode-es7-javascript-react-snippets",
		after = { "nvim-compe" },
		ft = { "javascript", "javascriptreact", "typescript" },
	},

	-- Markdown plugins
	{ "preservim/vim-pencil", ft = { "markdown" } },
	{ "dhruvasagar/vim-table-mode", ft = { "markdown" } },
	{ "iamcco/markdown-preview.nvim", run = { "cd app && yarn install" }, ft = { "markdown" } },
	{ "dkarter/bullets.vim", ft = { "markdown" } },
}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- lvim.autocommands.custom_groups = {
--   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- }
lvim.builtin.which_key.mappings["T"].h = { ":TSHighlightCapturesUnderCursor<cr>", "Get property" }
lvim.builtin.which_key.vmappings["/"] = { "<Plug>kommentary_visual_default<C-c>", "Comment" }
lvim.builtin.which_key.mappings["/"] = { "<Plug>kommentary_line_default", "Comment" }

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
function ScssFormat()
	local cursor = vim.fn.line(".")
	vim.cmd([[silent %!prettier --stdin-filepath %]])
	vim.fn.setpos(".", { 0, cursor, 1, "off" })
end
vim.cmd([[
  autocmd BufWinEnter *     :set nofoldenable
	autocmd BufWinEnter *.md  :map <C-c> :!md2pdf %<CR>
  autocmd BufWinEnter *     :highlight IndentBlanklineContextChar guifg=#768390 gui=nocombine
  autocmd BufWinEnter *     :highlight IndentBlanklineChar guifg=#373e47 gui=nocombine
  autocmd BufWinEnter *.md     :TableModeEnable
  autocmd BufWritePre *.scss  :lua ScssFormat()
  nnoremap Y y$
  nnoremap vv V
  nnoremap V v$
  inoremap , ,<c-g>u
  inoremap . .<c-g>u
  inoremap ! !<c-g>u
  inoremap ? ?<c-g>u
  inoremap ; ;<c-g>u
  inoremap <space> <space><c-g>u
]])
