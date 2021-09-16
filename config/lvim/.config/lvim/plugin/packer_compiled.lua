-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/nick/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/nick/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/nick/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/nick/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/nick/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/start/FixCursorHold.nvim"
  },
  ["bullets.vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/opt/bullets.vim"
  },
  ["codi.vim"] = {
    commands = { "Codi" },
    loaded = false,
    needs_bufread = false,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/opt/codi.vim"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\1\2<\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\19core.dashboard\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/opt/dashboard-nvim"
  },
  ["friendly-snippets"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/opt/friendly-snippets"
  },
  ["github-nvim-theme"] = {
    config = { "\27LJ\1\2ƒ\1\0\0\4\0\b\0\f4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\6\0004\2\3\0007\2\4\2%\3\5\0>\2\2\2:\2\a\1>\0\2\1G\0\1\0\15themeStyle\1\0\1\18functionStyle\tbold\nTHEME\vgetenv\aos\nsetup\17github-theme\frequire\0" },
    loaded = true,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/start/github-nvim-theme"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\1\0029\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\vconfig\15user.blank\frequire\0" },
    loaded = true,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/start/indent-blankline.nvim"
  },
  kommentary = {
    config = { "\27LJ\1\2>\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\vconfig\20user.kommentary\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/opt/kommentary"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\1\2:\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\17core.lualine\frequire\0" },
    loaded = true,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/start/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/opt/markdown-preview.nvim"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\1\0027\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\14neoscroll\frequire\0" },
    loaded = true,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/start/neoscroll.nvim"
  },
  ["nlsp-settings.nvim"] = {
    loaded = true,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/start/nlsp-settings.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/start/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\1\2<\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\19core.autopairs\frequire\0" },
    load_after = {
      ["nvim-compe"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/opt/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\1\2>\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\vconfig\20user.bufferline\frequire\0" },
    loaded = true,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\1\2=\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\vconfig\19user.colorizer\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/opt/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    after = { "nvim-autopairs" },
    after_files = { "/home/nick/.local/share/lunarvim/site/pack/packer/opt/nvim-compe/after/plugin/compe.vim" },
    config = { "\27LJ\1\0028\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\15core.compe\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/opt/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    config = { "\27LJ\1\2=\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\1\2\0>\1\1\1G\0\1\0\nsetup\20core.lspinstall\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/opt/nvim-lspinstall"
  },
  ["nvim-spectre"] = {
    config = { "\27LJ\1\2,\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\17user.spectre\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/opt/nvim-spectre"
  },
  ["nvim-toggleterm.lua"] = {
    config = { "\27LJ\1\2;\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\18core.terminal\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/opt/nvim-toggleterm.lua"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\1\2;\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\18core.nvimtree\frequire\0" },
    loaded = true,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-ts-autotag" },
    loaded = true,
    only_config = true
  },
  ["nvim-ts-autotag"] = {
    load_after = {},
    loaded = false,
    needs_bufread = false,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/opt/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/start/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/start/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/start/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/start/popup.nvim"
  },
  ["project.nvim"] = {
    config = { "\27LJ\1\2:\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\17core.project\frequire\0" },
    loaded = true,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/start/project.nvim"
  },
  ["quick-scope"] = {
    config = { "\27LJ\1\0020\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\21user.quick-scope\frequire\0" },
    loaded = true,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/start/quick-scope"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\1\2<\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\19core.telescope\frequire\0" },
    loaded = true,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-gutentags"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/opt/vim-gutentags"
  },
  ["vim-js-file-import"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/opt/vim-js-file-import"
  },
  ["vim-pencil"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/opt/vim-pencil"
  },
  ["vim-surround"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/opt/vim-surround"
  },
  ["vim-table-mode"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/opt/vim-table-mode"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/start/vim-visual-multi"
  },
  ["vim-vsnip"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/opt/vim-vsnip"
  },
  ["vscode-es7-javascript-react-snippets"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/opt/vscode-es7-javascript-react-snippets"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\1\2<\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\19core.which-key\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/nick/.local/share/lunarvim/site/pack/packer/opt/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-bufferline.lua
time([[Config for nvim-bufferline.lua]], true)
try_loadstring("\27LJ\1\2>\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\vconfig\20user.bufferline\frequire\0", "config", "nvim-bufferline.lua")
time([[Config for nvim-bufferline.lua]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\1\2<\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\19core.telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\1\2;\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\18core.nvimtree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\1\0027\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\14neoscroll\frequire\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\1\0029\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\vconfig\15user.blank\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\1\2:\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\17core.lualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\1\2=\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\20core.treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: quick-scope
time([[Config for quick-scope]], true)
try_loadstring("\27LJ\1\0020\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\21user.quick-scope\frequire\0", "config", "quick-scope")
time([[Config for quick-scope]], false)
-- Config for: github-nvim-theme
time([[Config for github-nvim-theme]], true)
try_loadstring("\27LJ\1\2ƒ\1\0\0\4\0\b\0\f4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\6\0004\2\3\0007\2\4\2%\3\5\0>\2\2\2:\2\a\1>\0\2\1G\0\1\0\15themeStyle\1\0\1\18functionStyle\tbold\nTHEME\vgetenv\aos\nsetup\17github-theme\frequire\0", "config", "github-nvim-theme")
time([[Config for github-nvim-theme]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
try_loadstring("\27LJ\1\2:\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\17core.project\frequire\0", "config", "project.nvim")
time([[Config for project.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Codi lua require("packer.load")({'codi.vim'}, { cmd = "Codi", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType lua ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "lua" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'nvim-colorizer.lua', 'nvim-ts-autotag'}, { ft = "html" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescript ++once lua require("packer.load")({'vim-gutentags', 'nvim-colorizer.lua', 'vscode-es7-javascript-react-snippets', 'nvim-ts-autotag', 'vim-js-file-import'}, { ft = "typescript" }, _G.packer_plugins)]]
vim.cmd [[au FileType yaml ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "yaml" }, _G.packer_plugins)]]
vim.cmd [[au FileType json ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "json" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'vim-gutentags', 'nvim-colorizer.lua', 'vscode-es7-javascript-react-snippets', 'nvim-ts-autotag', 'vim-js-file-import'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType css ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "css" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescriptreact ++once lua require("packer.load")({'vim-gutentags', 'nvim-colorizer.lua', 'vscode-es7-javascript-react-snippets', 'nvim-ts-autotag', 'vim-js-file-import'}, { ft = "typescriptreact" }, _G.packer_plugins)]]
vim.cmd [[au FileType dosini ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "dosini" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'bullets.vim', 'vim-table-mode', 'vim-pencil', 'nvim-ts-autotag', 'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascriptreact ++once lua require("packer.load")({'vim-gutentags', 'nvim-colorizer.lua', 'vscode-es7-javascript-react-snippets', 'nvim-ts-autotag', 'vim-js-file-import'}, { ft = "javascriptreact" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufRead * ++once lua require("packer.load")({'vim-surround', 'vim-gutentags', 'nvim-spectre', 'kommentary', 'vim-js-file-import'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'dashboard-nvim', 'which-key.nvim', 'nvim-toggleterm.lua'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au InsertCharPre * ++once lua require("packer.load")({'friendly-snippets'}, { event = "InsertCharPre *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'nvim-ts-autotag', 'nvim-compe', 'vim-vsnip'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'nvim-lspinstall'}, { event = "VimEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
