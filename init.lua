-- vim:foldlevel=99
require('lazystrap')

-- {{{ Plugins
require('lazy').setup({
	{ "nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate" },
	{ "rebelot/kanagawa.nvim", branch = "master", lazy = false, priority = 1000,
		config = function()
			vim.cmd([[colorscheme kanagawa]])
		end
	},
	{ "nvim-tree/nvim-web-devicons", lazy = true },
	{ "neovim/nvim-lspconfig" },
	{ "onsails/lspkind.nvim" }
})

require('lsp')
-- }}}

-- {{{ Vim Options

vim.opt.background = "dark"
vim.opt.mouse = "a"
vim.opt.signcolumn = "yes:1"
vim.opt.incsearch = true
vim.opt.hlsearch = true

vim.opt.showmode = false
vim.opt.fillchars = "eob:\\"

vim.opt.re = 2
vim.opt.equalalways = true
vim.opt.completeopt = "menuone,noinsert,noselect"

vim.cmd([[
filetype plugin on
filetype plugin indent on
]])

-- tabs
vim.opt.tabstop = 4
vim.opt.expandtab = false
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = false

vim.opt.modeline = true
vim.opt.foldmethod = "marker"
vim.opt.foldlevelstart = 0

-- line numbers
vim.opt.cindent = true
vim.opt.cino = "g0N-sj1:0"

vim.opt.termguicolors = true

-- }}}

-- {{{ Keybinds
function noremap(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true })
end

function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = false })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

function vmap(shortcut, command)
  map('v', shortcut, command)
end

nmap('<leader>p', '"+p')
nmap('<leader>y', '"+y')
-- }}}
