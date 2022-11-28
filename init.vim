" THEME CONFIG / PLUGIN PRELOAD CONFIG ------------------------------------------------------------------
let g:polyglot_disabled = ['autoindent', 'cpp.plugin', 'typescript.plugin', 'javascript.plugin', 'vue.plugin']

let g:ale_hover_cursor = 0
let g:ale_completion_enabled = 0
let g:ale_linters_explicit = 1

let g:gruvbox_material_palette = 'material'
let g:gruvbox_material_background = 'medium'
let g:gruvbox_material_enable_bold = 1
let g:gruvbox_material_diagnostic_text_highlight = 0
let g:gruvbox_material_diagnostic_line_highlight = 0
let g:gruvbox_material_statusline_style = 'mix'
let g:gruvbox_material_visual = 'grey background'

let g:gruvbox_italic=1
let g:gruvbox_contrast_dark="hard"
let g:gruvbox_improved_strings=0
let g:gruvbox_transparent_bg=0

let g:gruvbox_baby_background_color = 'dark'

let g:palenight_terminal_italics=1

let g:tokyonight_enable_italic=1
let g:tokyonight_style = 'night' " available: night, storm

let g:tokyodark_color_gamma = "1.2"

let g:onedark_config = {
			\ 'style': 'darker'
			\}

let g:SignatureMarkTextHLDynamic = 1
let g:SignatureMarkTextHL = 'LineNr'

call plug#begin('~/.config/nvim/plugins')
	" themes
	Plug 'tiagovla/tokyodark.nvim'
	Plug 'EdenEast/nightfox.nvim'
	Plug 'navarasu/onedark.nvim'
	Plug 'drewtempelmeyer/palenight.vim', { 'frozen': 1 }
	Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
	Plug 'sainnhe/gruvbox-material', { 'frozen': 1 }
	Plug 'morhetz/gruvbox'
	Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
	Plug 'luisiacc/gruvbox-baby', { 'branch': 'main' }
	Plug 'kyazdani42/nvim-web-devicons', { 'frozen': 1 }
	Plug 'ryanoasis/vim-devicons'

	Plug 'neoclide/coc.nvim', { 'branch' : 'master', 'do': 'yarn install --frozen-lockfile' }
	Plug 'github/copilot.vim', { 'branch': 'release' }
	"Plug 'dense-analysis/ale'

	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'tikhomirov/vim-glsl'
	"Plug 'sheerun/vim-polyglot'
	Plug 'p00f/nvim-ts-rainbow'
	Plug 'lervag/vimtex'

	Plug 'nvim-lualine/lualine.nvim'

	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'liuchengxu/vista.vim'

	Plug 'dccsillag/magma-nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'nathanaelkane/vim-indent-guides'
	Plug 'mattn/emmet-vim'
	Plug 'lewis6991/gitsigns.nvim'
	Plug 'caenrique/nvim-toggle-terminal'
	Plug 'equalsraf/neovim-gui-shim'
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'kyazdani42/nvim-tree.lua'
	Plug 'kshenoy/vim-signature'
	Plug 'preservim/nerdcommenter'
	Plug 'ericcurtin/CurtineIncSw.vim'
	Plug 'skywind3000/asynctasks.vim'
	Plug 'skywind3000/asyncrun.vim'
	Plug 'sarahkittyy/vim-vue', { 'frozen': 1 }
	Plug 'mg979/vim-visual-multi'
	Plug 'tpope/vim-fugitive'
	Plug 'rhysd/vim-clang-format'
	Plug 'AndrewRadev/tagalong.vim'
	Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
	Plug 'sarahkittyy/vim-session'

	Plug 'wesQ3/vim-windowswap'
	Plug 'voldikss/vim-floaterm'
	Plug 'xolox/vim-misc'

	Plug 'nvim-lua/plenary.nvim'
	Plug 'kkharji/sqlite.lua'

	"Plug 'preservim/nerdtree'
	"Plug 'Xuyuanp/nerdtree-git-plugin', { 'frozen': 1 }
	"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	"Plug 'baopham/vim-nerdtree-unfocus'

call plug#end()

" VIM CONFIG ----------------------------------
set tabstop=4
set title
set nofixeol
set shiftwidth=4
set softtabstop=4
set noexpandtab
set completeopt=menuone,noinsert,noselect
set hidden
set noequalalways
set listchars=tab:\|\ 
set nolist
set updatetime=300
set autoread
filetype plugin on
filetype plugin indent on

set nobackup
set nowritebackup

set mouse=a

set noshowmode
set fillchars+=eob:\ 
set laststatus=2

set cindent
set cino=
set cino+=g0
set cino+=N-s
set cino+=j1
set cino+=:0

set incsearch
set hlsearch

set ssop-=blank
set ssop-=buffers
set ssop-=localoptions
set ssop-=options

set ssop+=curdir
set ssop-=sesdir
set ssop+=help
set ssop+=tabpages
set ssop+=winsize
set ssop+=winpos
set ssop+=resize

set tal=%!MyTabLine()

set pyxversion=3

set termguicolors
set background=dark

colorscheme tokyodark

" patch to fix #pragma once annoyance
hi! link TSError NONE
hi! TabLineSel guifg=#78A2CC
hi SignatureMarkText guibg=#000

" AUTOCOMMANDS ---------------------------------------
augroup nums
	au!
	au BufEnter,InsertLeave * call SetRnu()
	au BufLeave,InsertEnter * set norelativenumber
	au FileType NvimTree set nonu
augroup END

augroup cursorline
	au!
	au VimEnter * setlocal cursorline
	au WinEnter * setlocal cursorline
	au BufWinEnter * setlocal cursorline
	au WinLeave * setlocal nocursorline
augroup END

augroup all
	au!
	au BufEnter * call CloseHiddenBuffers()
	au VimLeave * set guicursor=a:ver1-blinkon1
	au TermOpen * tnoremap <buffer> <Esc> <C-\><C-n>
	au VimLeave * wshada!
	au Filetype fzf tunmap <buffer> <Esc>
	au BufNewFile,BufRead /*.rasi setf css
	au BufNewFile,BufRead *.ipynb setfiletype python
	"autocmd BufWritePost $MYVIMRC call ReloadVimrc()
	au BufEnter * :ClangFormatAutoDisable
	au BufEnter *.cpp,*.hpp,*.c,*.h :ClangFormatAutoEnable
	autocmd Filetype tex setlocal indentexpr=
	au Filetype *.jsx,*.tsx set ft=typescriptreact
	"autocmd BufWinEnter * NERDTreeMirror
	"autocmd BufEnter * if (winnr("$") == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree()) | :NERDTreeClose | endif
	autocmd BufEnter NvimTree* if winnr("$") == 1 | execute "q" | endif
	autocmd BufLeave NvimTree* wincmd l

	" language editor config
	autocmd Filetype * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
	autocmd Filetype markdown set noexpandtab
	autocmd Filetype asm setlocal filetype=nasm
	autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
augroup END

" MAPPINGS -------------------------------------------
augroup maps
	au!
	autocmd Filetype NvimTree nmap <silent><buffer><leader>e e:exec ":cd " . getcwd()<cr>
	autocmd Filetype NvimTree nmap <silent><buffer>u <leader>u:exec ":cd " . getcwd()<cr>
	autocmd Filetype c,cpp vnoremap <buffer><leader>C :ClangFormat<CR>
	autocmd Filetype c,cpp nnoremap <buffer><leader>C :<C-u>ClangFormat<CR>
	autocmd Filetype html,vue,jsx imap <leader>f </<C-x><C-o><TAB><Esc>F<i
	autocmd Filetype html,vue,jsx nmap <leader>f a</<C-x><C-o><TAB><Esc>F<i
augroup END

"nmap <C-n> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
nnoremap <C-n> :NvimTreeToggle<CR>
nmap gl :NvimTreeFocus<CR>
nmap <C-e> :RunFile<CR>
nnoremap <C-f> <cmd>Telescope find_files<CR>
nnoremap <C-s> <cmd>Telescope live_grep<CR>
cnoremap <Up> <C-p>
cnoremap <Down> <C-n>
nnoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <c-space> coc#refresh()
nnoremap <silent> K :call <SID>show_documentation()<CR>
inoremap {<CR>      {}<Left>
inoremap {<ESC> {<ESC>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {}     {}
inoremap {<Right> {<Right>
inoremap {<space> { 
tnoremap <s-space> <space>
tnoremap <s-BS> <BS>
tnoremap <C-BS> <C-w>
imap <silent><script><expr> <C-J> copilot#Accept("")

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>qf  <Plug>(coc-fix-current)
nmap <leader>cl  <Plug>(coc-codelens-action)

nnoremap <silent><nowait> gs :Vista finder<CR>
nmap <F2> <Plug>(coc-rename)
nmap <C-p> :CtrlP getcwd()<CR>
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
vmap <silent> <C-c> <Plug>NERDCommenterToggle<CR>gv
nmap <silent> <C-c> <Plug>NERDCommenterToggle
map <expr><silent> <F5> 
	\ expand('%:e') ==? 'cpp' ? "\<C-w>v\<C-w>w:call CurtineIncSw()\<CR>\<C-w>h" :
	\ expand('%:e') ==? 'c' ? "\<C-w>v\<C-w>w:call CurtineIncSw()\<CR>\<C-w>h" : "\<C-w>v\<F6>"
map <F6> :call CurtineIncSw()<CR>
"map <F5> :CocCommand clangd.switchSourceHeader<CR>
"map <F6> :CocCommand clangd.switchSourceHeader vsplit<CR>
nnoremap <leader>g :AsyncTask generate<CR>
nnoremap <leader>t :AsyncTask test<CR>
nnoremap <leader>r :AsyncTask run<CR>
nnoremap <leader>b :AsyncTask build<CR>
nnoremap <leader>s :AsyncStop<CR>
nmap <leader>R :call RefreshAll()<CR>
nmap <leader>n ma
nmap <leader>d mdy
"nmap <leader>e 
nmap <silent> <s-t> :if &ft ==? "NvimTree" \| wincmd l \| endif \| FloatermToggle<CR>
nmap <C-s-t> :ToggleTerminal<CR>
nmap <C-t> :Vista!!<CR>
nmap ,l :call LoadSession()<CR>
nmap ,s :call SaveSession()<CR>
map <leader>p "+p
map <leader>y "+y
map <leader>mp <Plug>MarkdownPreviewToggle
nnoremap <silent> <leader>ww :call WindowSwap#EasyWindowSwap()<CR>
" magma
nnoremap <silent> <leader>jo :MagmaEvaluateOperator<CR>
nnoremap <silent> <leader>ji :MagmaInit<CR>
xnoremap <silent>       <leader>jv  :<C-u>MagmaEvaluateVisual<CR>
nnoremap <silent>       <leader>jc :MagmaReevaluateCell<CR>
nnoremap <silent>       <leader>jd :MagmaDelete<CR>
" coc
inoremap <silent><expr> <Down>
	\ coc#pum#visible() ? coc#pum#next(1) :
  \ pumvisible() ? "\<C-n>" :
	\ "\<Down>"
inoremap <silent><expr> <Up>
	\ coc#pum#visible() ? coc#pum#prev(1) :
  \ pumvisible() ? "\<C-p>" :
	\ "\<Up>"
"inoremap <silent><expr> <TAB>
      "\ coc#pum#visible() ? coc#pum#next(1) :
      "\ CheckBackspace() ? "\<Tab>" :
      "\ coc#refresh()
"inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent> f<TAB> <TAB>

" COMMANDS -----------------------------------
command! Config :e ~/.config/nvim/init.vim
command! GuiConfig :e ~/.config/nvim/ginit.vim
command! RunnerConfig :e ~/.config/nvim/runners.vim
command! Reload :call ReloadVimrc()
command! -nargs=1 -complete=file Wcd :exe "normal :cd <args><CR>,l"

" language runners
source ~/.config/nvim/runners.vim

" PLUGIN CONFIG -------------------------------------------
let g:asyncrun_open = 6
let g:asynctasks_term_pos = 'bottom'

let g:vista_default_executive = 'coc'

let g:indentLine_char = '|'
let g:indentLine_defaultGroup = 'SpecialKey'

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 0
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'NvimTree']
let g:indent_guides_color_change_percent = 2

let g:user_emmet_leader_key='<C-Q>'
let g:user_emmet_mode='a'

let g:asyncrun_runner = get(g:, 'asyncrun_runner', {})

let g:mkdp_browserfunc='g:Open_browser'
let g:mkdp_auto_close = 0

let g:windowswap_map_keys = 0

let g:vimtex_view_method = 'zathura'

let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeHighlightCursorline = 0

let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match

let g:workspace_autosave_ignore = ['nerdtree']

let g:session_directory = $HOME . '/.vim/sessions/'
let g:session_autosave = 0

let g:workspace_session_disable_on_args = 1

let g:clang_format#detect_style_file = 1
let g:clang_format#command="/usr/bin/clang-format"
let g:clang_format#enable_fallback_style = 0
let g:clang_format#auto_format = 0

let g:copilot_no_tab_map = v:true

let g:neoterm_size=15

let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40

let g:tagalong_additional_filetypes = ['vue']

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.vue'
let g:closetag_filetypes = 'html,xhtml,phtml,vue'

let g:space_vim_dark_background = 235

let g:loaded_matchparen=0

let g:tex_flavor='latex'

let g:doge_mapping='<leader>D'

let g:vue_pre_processors = 'detect_on_enter'

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]

let g:NERDTreeDirArrows = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
								\ }

" let g:multi_cursor_start_word_key = 'gb'
" let g:multi_cursor_next_key = 'gb'
let g:VM_maps = {}
let g:VM_maps['Find Under'] = 'gb'
let g:VM_maps['Find Subword Under'] = 'gb'

"let g:vue_disable_pre_processors = 1 
let g:vimtex_matchparen_enabled = 0

let g:coc_snippet_next = '<tab>'
let g:coc_node_path = '/home/sarahkitty/.nvm/versions/node/v18.9.0/bin/node'
let g:coc_node_args=['--max-old-space-size=3000']

let g:open_in_insert_mode = 0

lua <<EOF
-- require('feline').setup({
--	  preset = 'default'
-- })

-- LUA FUNCTIONS -------------------------------------------
local function collapseNode (node)
  local entries = node.entries
  if not entries then return end
  for _, e in pairs(entries) do collapseNode(e) end
  node.open = false
end

function _G.nvimTreeCollapse()
  local lib = require'nvim-tree.lib'
  collapseNode(lib.Tree)
  lib.refresh_tree()
end
function _G.ExpandAll()
    local nvimlib = require('nvim-tree.lib')
    local function iter(nodes)
        for _, node in pairs(nodes) do
            if not node.open and node.nodes then
                nvimlib.expand_or_collapse(node)
            end
            if node.nodes then
                iter(node.nodes)
            end
        end
    end

    local nodes = {}
    local currnode = nvimlib.get_node_at_cursor()
    if currnode == nil then
        return
    end
    nodes = {currnode}
    iter(nodes)
end

-- LUA CONFIG ------------------------------------------
require('gitsigns').setup {
  signs = {
    add          = {hl = 'GitSignsAdd'   , text = '+', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
    change       = {hl = 'GitSignsChange', text = '*', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    delete       = {hl = 'GitSignsDelete', text = '-', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    topdelete    = {hl = 'GitSignsDelete', text = 'x', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
  },
}

require('nightfox').setup({
	options = {
		styles = {
			comments = 'italic',
			functions = 'italic',
			keywords = 'italic',
			strings = 'NONE'
		}
	}
})

require('catppuccin').setup({
	flavour = "mocha",
	integrations = {
		treesitter = true
	}
})

require('lualine').setup {
 	options = {
 		icons_enabled = false,
 		theme = 'tokyonight',
 		component_separators = { left = '', right = ''},
 		section_separators = { left = '', right = ''},
 		disabled_filetypes = {},
 		always_divide_middle = true,
 	},
 	sections = {
 		lualine_a = {'mode'},
 		lualine_b = {'filename'},
 		lualine_c = {'branch', 'diff', 'diagnostics', 'NearestMethodOrFunction' },
 		lualine_x = {},
 		lualine_y = {
			{
				'filetype',
				icons_enabled = true
			}, 'encoding', 'searchcount'
		},
 		lualine_z = {'location'}
 	},
 	inactive_sections = {
 		lualine_a = {'mode'},
 		lualine_b = {'filename'},
 		lualine_c = {},
 		lualine_x = {},
 		lualine_y = {'filetype' },
 		lualine_z = {'location', 'encoding' }
 	},
 	extensions = { 'nvim-tree' }
}
require('nvim-tree').setup {
	filters = {
		dotfiles = true
	},
	git = {
		enable = true,
		ignore = false,
		timeout = 500
	},
	actions = {
		change_dir = {
			global = true
		}
	},
	renderer = {
		icons = {
			show = {
				git = true,
				folder = true,
				file = true,
				folder_arrow = true
			},
			glyphs = {
				default= "",
				symlink= "",
				git = {
				  unstaged = "✗",
				  staged = "✓",
				  unmerged = "",
				  renamed = "➜",
				  untracked = "★",
				  deleted = "",
				  ignored = ""
				},
				folder = {
				  arrow_open = "",
				  arrow_closed = "",
				  default = "",
				  open = "",
				  empty = "",
				  empty_open = "",
				  symlink = "",
				  symlink_open = "",
				}
			}
		}
	},
	open_on_tab = true,
	update_cwd = false,
	respect_buf_cwd = false,
	view = {
		relativenumber = false,
		preserve_window_proportions = true,
		mappings = {
			custom_only = true,
			list = {
				{ key = {"<CR>", "<2-LeftMouse>"}, action = "edit" },
				{ key = {"<S-CR>", "<2-LeftMouse>"}, action = "edit_no_picker" },
				{ key = {"e"},    action = "cd" },
				{ key = {"O"},    cb=":call v:lua.ExpandAll()<CR>" },
				{ key = "s",                        action = "vsplit" },
				{ key = "i",                        action = "split" },
				{ key = "t",                        action = "tabnew" },
				--{ key = "<",                            action = "prev_sibling" },
				--{ key = ">",                            action = "next_sibling" },
				--{ key = "P",                            action = "parent_node" },
				--{ key = "<BS>",                         action = "close_node" },
				--{ key = "K",                            action = "first_sibling" },
				--{ key = "J",                            action = "last_sibling" },
				{ key = "H",                            action = "toggle_ignored" },
				{ key = "I",                            action = "toggle_dotfiles" },
				{ key = "R",                            action = "refresh" },
				{ key = "<leader>n",                            action = "create" },
				{ key = "<leader>d",                            action = "remove" },
				--{ key = "D",                            action = "trash" },
				{ key = "r",                            action = "rename" },
				--{ key = "<C-r>",                        action = "full_rename" },
				{ key = "m",                            action = "cut" },
				{ key = "y",                            action = "copy" },
				{ key = "p",                            action = "paste" },
				--{ key = "y",                            action = "copy_name" },
				--{ key = "Y",                            action = "copy_path" },
				--{ key = "gy",                           action = "copy_absolute_path" },
				{ key = "[c",                           action = "prev_git_item" },
				{ key = "]c",                           action = "next_git_item" },
				{ key = "<leader>u",                            action = "dir_up" },
				--{ key = "q",                            action = "close" },
				{ key = "?",                           action = "toggle_help" },
			}
		}
	}
}
require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ["<Esc>"] = "close",
        ["<C-f>"] = "close",
        ["<C-s>"] = "close"
      }
    }
  },
  pickers = {
	find_files = {
	  find_command = { "rg", "--files", "--hidden", "-g", "!.git", "-g", "!build", "-g", "!dist", "-g", "!node_modules" },
	  hidden = true,
	  no_ignore = true
	}
  },
  extensions = {
	frecency = {
		ignore_patterns = { "*.git/*", "*/node_modules/*", "*/build/*" },
		disable_devicons = true,
		show_unindexed = false,
		default_workspace = 'CWD'
	}
  }
}
-- require('telescope').load_extension('frecency')

require'nvim-treesitter.configs'.setup {
	ignore_install = { "latex" },
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = { "vim" }
	},
	incremental_selection = {
		enable = false,
	},
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = 10000,
		colors = {
			"#FF6663",
			"#FEB144",
			"#FDFD97",
			"#9EE09E",
			"#9EC1CF",
			"#CC99C9",
		}
	}
}
require'nvim-web-devicons'.setup {
	default = true
}
EOF

" FUNCTIONS -------------------------------------------------------
function! SetRnu()
	if &ft =~'NvimTree'
		return
	endif
	set rnu
	set nu
endfunction

function! g:Run_termite(opts)
    let cmds = []
    let cmds += ['cd ' . shellescape(getcwd()) ]
    let cmds += [a:opts.cmd]
    let cmds += ['read -n1 -rsp \"press any key to continue ...\"']
    let text = shellescape(join(cmds, ";"))
    let command = 'termite -e "bash -c ' . text . '"'
    call system(command . ' &')
endfunction
let g:asyncrun_runner.termite = function('g:Run_termite')

function! g:Open_browser(url)
	":AsyncRun google-chrome-stable --new-window. a:url
	:call asyncrun#run("", {}, "google-chrome-stable --new-window " . a:url)
endfunction

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! LightlineFilename()
  let root = fnamemodify(get(b:, 'git_dir'), ':h')
  let path = expand('%:p')
  if path[:len(root)-1] ==# root
    return path[len(root)+1:]
  endif
  return expand('%')
endfunction

function! StatusDiagnostic() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  let msgs = []
  if get(info, 'error', 0)
	call add(msgs, 'E' . info['error'])
  endif
  if get(info, 'warning', 0)
	call add(msgs, 'W' . info['warning'])
  endif
  return join(msgs, ' ') . ' ' . get(g:, 'coc_status', '')
endfunction

function! GetFileTypeIcon(n)
	let l:bufnr = tabpagebuflist(a:n)[tabpagewinnr(a:n) - 1]
	return WebDevIconsGetFileTypeSymbol(bufname(l:bufnr))
endfunction

function! GetFileTypeIconWithText()
	return strlen(&ft) ? WebDevIconsGetFileTypeSymbol() . ' ' . &ft : 'no ft'
endfunction

function! CloseHiddenBuffers()
    " >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    " close any buffers hidden
    " <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    let open_buffers = []

    for i in range(tabpagenr('$'))
        call extend(open_buffers, tabpagebuflist(i + 1))
    endfor

    for num in range(1, bufnr("$") + 1)
        if buflisted(num) && index(open_buffers, num) == -1
            exec "bdelete! ".num
        endif
    endfor
endfunction

function! RefreshAll()
	:execute ":wa | %bd | bn"
	echo "Refreshed to default"
endfunction

function! s:show_documentation()
	if (coc#rpc#ready())
		call CocActionAsync('doHover')
	endif
endfunction

function! MyTabLine()
  let s = ''
  for i in range(tabpagenr('$'))
	" select the highlighting
	if i + 1 == tabpagenr()
	  let s .= '%#StatusLine#'
	else
	  let s .= '%#StatusLineNC#'
	endif

	" set the tab page number (for mouse clicks)
	let s .= '%' . (i + 1) . 'T'
	let s .= ' ' . (i + 1)

	" the label is made by MyTabLabel()
	let s .= ' %{MyTabLabel(' . (i + 1) . ')} '
	let s .= GetFileTypeIcon(i + 1) . ' '
  endfor


  " after the last tab fill with TabLineFill and reset tab page nr
  let s .= '%#TabLineFill#%T'

  return s
endfunction

function! MyTabLabel(n)
  let buflist = tabpagebuflist(a:n)
  let winnr = tabpagewinnr(a:n)
  return fnamemodify(bufname(buflist[winnr - 1]), ':t')
endfunction

if !exists('*ReloadVimrc')
	fun! ReloadVimrc()
	   let save_cursor = getpos('.')
	   source $MYVIMRC
	   call setpos('.', save_cursor)
	endfun
endif

function! SaveSession()
	let l:ctab = tabpagenr()
	tabdo cclose
	tabdo TagbarClose
	tabdo NvimTreeClose
	:exe ":normal " . l:ctab . "gt"
	let hash = system("echo " . shellescape(getcwd()) . "| md5 | cut -d' ' -f 1")
	let path = "~/.vim/sessions/" . hash
	:execute ":SaveSession! " . path
	echom "Saved to " . path
endfunction

function! LoadSession()
	let hash = system("echo " . shellescape(getcwd()) . "| md5 | cut -d' ' -f 1")
	let path = "~/.vim/sessions/" . hash
	call RefreshAll()
	:execute ":OpenSession! " . path
	echom "Loaded from " . path
endfunction

function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

" NVUI CONFIG ----------------------------------------
if exists('g:nvui')
	set guifont=FiraCode\ Nerd\ Font\ Mono:w53:h10
	:NvuiAnimationsEnabled v:false
endif
