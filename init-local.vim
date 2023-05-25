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

let g:nord_italic_comments = 1

let g:tokyodark_color_gamma = "1.2"

let g:onedark_config = {
			\ 'style': 'darker'
			\}

let g:SignatureMarkTextHLDynamic = 1
let g:SignatureMarkTextHL = 'LineNr'

call plug#begin('~/.config/nvim/plugins')
	" themes
	Plug 'tiagovla/tokyodark.nvim'
	Plug 'rebelot/kanagawa.nvim'
	Plug 'EdenEast/nightfox.nvim'
	Plug 'navarasu/onedark.nvim'
	Plug 'drewtempelmeyer/palenight.vim', { 'frozen': 1 }
	Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
	Plug 'sainnhe/gruvbox-material'
	Plug 'marko-cerovac/material.nvim'
	Plug 'morhetz/gruvbox'
	Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
	Plug 'luisiacc/gruvbox-baby', { 'branch': 'main' }
	Plug 'arcticicestudio/nord-vim'

	Plug 'jackMort/ChatGPT.nvim'

	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'ryanoasis/vim-devicons'

	Plug 'neoclide/coc.nvim', { 'branch' : 'master', 'do': 'yarn install --frozen-lockfile' }
	Plug 'github/copilot.vim', { 'branch': 'release' }
	"Plug 'dense-analysis/ale'
	Plug 'mfussenegger/nvim-dap'
	Plug 'rcarriga/nvim-dap-ui'

	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'theHamsta/nvim-dap-virtual-text'
	Plug 'tikhomirov/vim-glsl'
	"Plug 'sheerun/vim-polyglot'
	Plug 'HiPhish/nvim-ts-rainbow2'
	Plug 'lervag/vimtex'

	Plug 'nvim-lualine/lualine.nvim'

	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
	Plug 'kkharji/sqlite.lua'
	Plug 'nvim-telescope/telescope-frecency.nvim'

	Plug 'liuchengxu/vista.vim'

	Plug 'dccsillag/magma-nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'nathanaelkane/vim-indent-guides'
	Plug 'mattn/emmet-vim'
	Plug 'lewis6991/gitsigns.nvim'
  Plug 'chentoast/marks.nvim'
	Plug 'caenrique/nvim-toggle-terminal'
	Plug 'equalsraf/neovim-gui-shim'
	Plug 'nvim-telescope/telescope.nvim'

	"Plug 'kyazdani42/nvim-tree.lua'
	Plug 'nvim-neo-tree/neo-tree.nvim'

	Plug 'preservim/nerdcommenter'
	Plug 'ericcurtin/CurtineIncSw.vim'
	Plug 'skywind3000/asynctasks.vim'
	Plug 'skywind3000/asyncrun.vim'
	Plug 'sarahkittyy/vim-vue', { 'frozen': 1 }
	Plug 'mg979/vim-visual-multi'

	Plug 'tpope/vim-fugitive'
	Plug 'junkblocker/patchreview-vim'
	Plug 'codegram/vim-codereview'

	Plug 'rhysd/vim-clang-format'
	Plug 'AndrewRadev/tagalong.vim'
	Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
	Plug 'sarahkittyy/vim-session'

	Plug 'wesQ3/vim-windowswap'
	Plug 'voldikss/vim-floaterm'
	Plug 'xolox/vim-misc'

	Plug 'nvim-lua/plenary.nvim'
	Plug 'MunifTanjim/nui.nvim'
	Plug 's1n7ax/nvim-window-picker'

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
set re=2
set equalalways
set listchars=tab:\|\ 
set nolist
set updatetime=300
set autoread
filetype plugin on
filetype plugin indent on

set nobackup
set nowritebackup

set background=dark

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

set shada=!,'300,<50,s10,h

set tal=%!MyTabLine()

set pyxversion=3

set termguicolors

" patch to fix #pragma once annoyance
hi! link TSError NONE
hi! TabLineSel guifg=#78A2CC
hi! TSRainbowRed guifg=#FFABAB
hi! TSRainbowYellow guifg=#FFFFD1
hi! TSRainbowGreen guifg=#BFFCCC
hi! TSRainbowBlue guifg=#97A2FF
hi SignatureMarkText guibg=#000

" AUTOCOMMANDS ---------------------------------------
augroup nums
	au!
	au BufEnter,InsertLeave * call SetRnu()
	au BufLeave,InsertEnter * set norelativenumber
	au FileType NvimTree set nonu
	au FileType neo-tree set nonu
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
	"au BufEnter * call CloseHiddenBuffers()
	au VimLeave * set guicursor=a:ver1-blinkon1
	au VimLeave * wshada!
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
	autocmd BufEnter neo-tree* if winnr("$") == 1 | execute "q" | endif
	autocmd BufLeave neo-tree* wincmd l

	" language editor config
	autocmd Filetype * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
	autocmd Filetype markdown set noexpandtab
	autocmd Filetype asm setlocal filetype=nasm
	autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
augroup END

" MAPPINGS -------------------------------------------
augroup maps
	au!
	autocmd Filetype NvimTree nmap <silent><buffer><leader>e :exec ":cd " . getcwd()<cr>
	autocmd Filetype NvimTree nmap <silent><buffer>u <leader>u:exec ":cd " . getcwd()<cr>
	autocmd Filetype c,cpp vnoremap <buffer><leader>C :ClangFormat<CR>
	autocmd Filetype c,cpp nnoremap <buffer><leader>C :<C-u>ClangFormat<CR>
	autocmd Filetype html,vue,jsx imap <leader>f </<C-x><C-o><TAB><Esc>F<i
	autocmd Filetype html,vue,jsx nmap <leader>f a</<C-x><C-o><TAB><Esc>F<i
	au TermOpen * tnoremap <buffer> <Esc> <C-\><C-n>
	au Filetype fzf tunmap <buffer> <Esc>
augroup END

nnoremap z= <C-w>=
"nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <C-n> :Neotree toggle<CR>
nmap gl :Neotree focus<CR>
nmap <C-e> :RunFile<CR>
"nnoremap F <cmd>Telescope frecency workspace=CWD<CR>
nnoremap F <cmd>FzfGFiles<CR>
nnoremap <C-s> <cmd>FzfRg<CR>
nnoremap <C-f> <cmd>FzfFiles<CR>
nnoremap <leader>nt :tabnew<CR>:FzfFiles<CR>
nnoremap <leader>fg <cmd>FzfGFiles?<CR>
nnoremap <leader>fc <cmd>FzfCommits<CR>
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
nnoremap <leader>ai :ChatGPT<CR>

tnoremap <s-space> <space>
tnoremap <s-BS> <BS>
tnoremap <C-BS> <C-w>
imap <silent><script><expr> <C-J> copilot#Accept("")

" nvim-dap bindings
nmap <silent> <leader>du :lua require'dapui'.toggle()<CR>
nmap <silent> <leader>dc :lua require'dap'.continue()<CR>
nmap <silent> <leader>ds :lua require'dap'.step_over()<CR>
nmap <silent> <leader>di :lua require'dap'.step_into()<CR>
nmap <silent> <leader>do :lua require'dap'.step_out()<CR>
nmap <silent> <leader>db :lua require'dap'.toggle_breakpoint()<CR>
nmap <silent> <leader>dB :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nmap <silent> <leader>dR :lua require'dap'.run_to_cursor()<CR>
nmap <silent> <leader>dr :lua require'dap'.repl.open()<CR>
nmap <silent> <leader>dl :lua require'dap'.run_last()<CR>

nnoremap <silent><nowait> gs :Neotree source=git_status position=float toggle<CR>
nnoremap gc :Vista<CR>
nmap <C-p> :CtrlP getcwd()<CR>
vmap <silent> <C-c> <Plug>NERDCommenterToggle<CR>gv
nmap <silent> <C-c> <Plug>NERDCommenterToggle
map <expr><silent> <F5> 
	\ expand('%:e') ==? 'cpp' ? "\<C-w>v\<C-w>w:call CurtineIncSw()\<CR>\<C-w>h" :
	\ expand('%:e') ==? 'c' ? "\<C-w>v\<C-w>w:call CurtineIncSw()\<CR>\<C-w>h" : "\<C-w>v\<F7>"
map <expr><silent> <F6> 
	\ expand('%:e') ==? 'cpp' ? "\<C-w>s:call CurtineIncSw()\<CR>z40\<CR>\<C-w>j" :
	\ expand('%:e') ==? 'c' ? "\<C-w>s:call CurtineIncSw()\<CR>z40\<CR>\<C-w>j" : "\<C-w>s\<F7>"
map <F7> :call CurtineIncSw()<CR>
"map <F5> :CocCommand clangd.switchSourceHeader<CR>
"map <F6> :CocCommand clangd.switchSourceHeader vsplit<CR>
nnoremap <leader>g :AsyncTask generate<CR>
nnoremap <leader>t :AsyncTask test<CR>
nnoremap <leader>r :AsyncTask run<CR>
nnoremap <leader>b :AsyncTask build<CR>
nnoremap <leader>s :AsyncStop<CR>
nmap <leader>R :call RefreshAll()<CR>
"nmap <leader>e 
nmap <silent> <Esc> :cclose<CR>
nmap <silent> <s-t> :if &ft ==? "neo-tree" \| wincmd l \| endif \| FloatermToggle<CR>
nmap <C-s-t> :ToggleTerminal<CR>
nmap <C-w>t :ToggleWindowTerminal<CR>
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
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>qf  <Plug>(coc-fix-current)
nmap <leader>cl  <Plug>(coc-codelens-action)
nmap <F2> <Plug>(coc-rename)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
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
command! Config :e ~/.config/nvim/init-local.vim
command! GuiConfig :e ~/.config/nvim/ginit.vim
command! VSConfig :e ~/.config/nvim/init.vim
command! RunnerConfig :e ~/.config/nvim/runners.vim
command! Reload :call ReloadVimrc()
command! -nargs=1 -complete=file Wcd :exe "normal :cd <args><CR>,l"
command! MaterialSwitch :lua require('material.functions').find_style()

" language runners
source ~/.config/nvim/runners.vim

" PLUGIN CONFIG -------------------------------------------
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
let g:fzf_preview_window = ['right,50%,<140(up,40%)', 'ctrl-/']
let g:fzf_command_prefix = 'Fzf'
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

"let g:fugitive_git_executable = '/mnt/c/PROGRA~1/Git/cmd/git.exe'

let g:nvim_tree_git_hl = 0

let g:neo_tree_remove_legacy_commands = 1

let g:asyncrun_open = 6
let g:asynctasks_term_pos = 'bottom'

let g:vista_default_executive = 'coc'

let g:indentLine_char = '|'
let g:indentLine_defaultGroup = 'SpecialKey'

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 0
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'NvimTree', 'neo-tree']
let g:indent_guides_color_change_percent = 2

let g:user_emmet_leader_key='<C-y>'
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

let g:floaterm_width = 0.8
let g:floaterm_height = 0.8

let g:workspace_autosave_ignore = ['nerdtree']

let g:session_directory = $HOME . '/.vim/sessions/'
let g:session_autosave = 0

let g:workspace_session_disable_on_args = 1

let g:clang_format#detect_style_file = 1
let g:clang_format#command="/usr/bin/clang-format"
let g:clang_format#enable_fallback_style = 0
let g:clang_format#auto_format = 0

let g:copilot_no_tab_map = v:true
let g:copilot_filetypes = {
	\ 'dap*': v:false,
	\ }

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

-- function _G.nvimTreeCollapse()
  -- local lib = require'nvim-tree.lib'
  -- collapseNode(lib.Tree)
  -- lib.refresh_tree()
-- end
-- function _G.ExpandAll()
    -- local nvimlib = require('nvim-tree.lib')
    -- local function iter(nodes)
        -- for _, node in pairs(nodes) do
            -- if not node.open and node.nodes then
                -- nvimlib.expand_or_collapse(node)
            -- end
            -- if node.nodes then
                -- iter(node.nodes)
            -- end
        -- end
    -- end
-- 
    -- local nodes = {}
    -- local currnode = nvimlib.get_node_at_cursor()
    -- if currnode == nil then
        -- return
    -- end
    -- nodes = {currnode}
    -- iter(nodes)
-- end

-- local lib = require("nvim-tree.lib")
-- local api = require("nvim-tree.api")

-- LUA CONFIG ------------------------------------------
 
require'marks'.setup {
  -- whether to map keybinds or not. default true
  default_mappings = true,
  -- which builtin marks to show. default {}
  builtin_marks = { },
  -- whether movements cycle back to the beginning/end of buffer. default true
  cyclic = true,
  -- whether the shada file is updated after modifying uppercase marks. default false
  force_write_shada = false,
  -- how often (in ms) to redraw signs/recompute mark positions. 
  -- higher values will have better performance but may cause visual lag, 
  -- while lower values may cause performance penalties. default 150.
  refresh_interval = 1000,
  -- sign priorities for each type of mark - builtin marks, uppercase marks, lowercase
  -- marks, and bookmarks.
  -- can be either a table with all/none of the keys, or a single number, in which case
  -- the priority applies to all marks.
  -- default 10.
  sign_priority = { lower=10, upper=15, builtin=8, bookmark=20 },
  -- disables mark tracking for specific filetypes. default {}
  excluded_filetypes = {},
  mappings = {}
}

require'chatgpt'.setup {
	welcome_message = WELCOME_MESSAGE, -- set to "" if you don't like the fancy robot
  loading_text = "loading",
  question_sign = "", -- you can use emoji if you want e.g. 🙂
  answer_sign = "|",
  max_line_length = 180,
  chat_layout = {
    relative = "editor",
    position = "50%",
    size = {
      height = "80%",
      width = "80%",
    },
  },
  chat_window = {
    border = {
      highlight = "FloatBorder",
      style = "rounded",
      text = {
        top = " ChatGPT ",
      },
    },
  },
  chat_input = {
    prompt = "  ",
    border = {
      highlight = "FloatBorder",
      style = "rounded",
      text = {
        top_align = "center",
        top = " Prompt ",
      },
    },
    win_options = {
      winhighlight = "Normal:Normal",
    },
  },
  openai_params = {
    model = "text-davinci-003",
    frequency_penalty = 0,
    presence_penalty = 0,
    max_tokens = 300,
    temperature = 0,
    top_p = 1,
    n = 1,
  },
}

require('gitsigns').setup {
}

require'window-picker'.setup {
	autoselect_one = true,
	include_current = false,
	other_win_hl_color = '#2d3149',
	selection_chars = 'ABCDEFJHIJKLMNOPQRSTUVWXYZ',
	bo = {
		buftype = { 'terminal' },
		filetype = { 'NvimTree', "neo-tree", "qf" }
	},
}

require'neo-tree'.setup {
	enable_diagnostics = false,
	enable_git_status = false,
	window = {
		position="left",
		width=30,
		mappings = {
			["z"] = "none",
			["<CR>"] = "open_with_window_picker",
			["w"] = "open",
			["i"] = "open_split"
		},
		use_libuv_file_watcher = false
	},
	default_component_configs = {
		icon = {
			folder_empty = "o",
		},
		indent = {
			indent_size = 1,
			padding = 1,
			with_markers = false,
			with_expanders = true
		}
  }
}

local dap = require('dap')
dap.adapters.lldb = {
  type = 'executable',
  command = '/usr/sbin/lldb-vscode',
  name = "lldb"
}
dap.configurations.cpp = {
  {
    name = 'Launch',
    type = 'lldb',
    request = 'launch',
	program = function()
		return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
	end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {},

    -- 💀
    -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
    --
    --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
    --
    -- Otherwise you might get the following error:
    --
    --    Error on launch: Failed to attach to the target process
    --
    -- But you should be aware of the implications:
    -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
    -- runInTerminal = false,
  },
}
-- dap.configurations.cpp = {
--     {
--       -- If you get an "Operation not permitted" error using this, try disabling YAMA:
--       --  echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
--       name = "Attach to process",
--       type = 'lldb',  -- Adjust this to match your adapter name (`dap.adapters.<name>`)
--       request = 'attach',
--       pid = require('dap.utils').pick_process,
--       args = {},
--     },
-- }
dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp

require("nvim-dap-virtual-text").setup {
    enabled = true,
    enabled_commands = true,               -- create commands DapVirtualTextEnable, DapVirtualTextDisable, DapVirtualTextToggle, (DapVirtualTextForceRefresh for refreshing when debug adapter did not notify its termination)
    highlight_changed_variables = true,    -- highlight changed values with NvimDapVirtualTextChanged, else always NvimDapVirtualText
    highlight_new_as_changed = false,      -- highlight new variables in the same way as changed variables (if highlight_changed_variables)
    show_stop_reason = true,               -- show stop reason when stopped for exceptions
    commented = false,                     -- prefix virtual text with comment string
    only_first_definition = true,          -- only show virtual text at first definition (if there are multiple)
    all_references = false,                -- show virtual text on all all references of the variable (not only definitions)
    filter_references_pattern = '<module', -- filter references (not definitions) pattern when all_references is activated (Lua gmatch pattern, default filters out Python modules)
    -- experimental features:
    virt_text_pos = 'eol',                 -- position of virtual text, see `:h nvim_buf_set_extmark()`
    all_frames = false,                    -- show virtual text for all stack frames not only current. Only works for debugpy on my machine.
    virt_lines = false,                    -- show virtual lines instead of virtual text (will flicker!)
    virt_text_win_col = nil                -- position the virtual text at a fixed window column (starting from the first text column) ,
}

require("dapui").setup({
  icons = { expanded = "", collapsed = "", current_frame = "" },
  mappings = {
    -- Use a table to apply multiple mappings
    expand = { "<CR>", "<2-LeftMouse>" },
    open = "o",
    remove = "d",
    edit = "e",
    repl = "r",
    toggle = "t",
  },
  -- Use this to override mappings for specific elements
  element_mappings = {
    -- Example:
    -- stacks = {
    --   open = "<CR>",
    --   expand = "o",
    -- }
  },
  -- Expand lines larger than the window
  -- Requires >= 0.7
  expand_lines = vim.fn.has("nvim-0.7") == 1,
  -- Layouts define sections of the screen to place windows.
  -- The position can be "left", "right", "top" or "bottom".
  -- The size specifies the height/width depending on position. It can be an Int
  -- or a Float. Integer specifies height/width directly (i.e. 20 lines/columns) while
  -- Float value specifies percentage (i.e. 0.3 - 30% of available lines/columns)
  -- Elements are the elements shown in the layout (in order).
  -- Layouts are opened in order so that earlier layouts take priority in window sizing.
  layouts = {
    {
      elements = {
      -- Elements can be strings or table with id and size keys.
        { id = "scopes", size = 0.25 },
        "breakpoints",
        "stacks",
        "watches",
      },
      size = 40, -- 40 columns
      position = "left",
    },
    {
      elements = {
        "repl",
        "console",
      },
      size = 0.25, -- 25% of total lines
      position = "bottom",
    },
  },
  controls = {
    -- Requires Neovim nightly (or 0.8 when released)
    enabled = true,
    -- Display controls in this element
    element = "repl",
    icons = {
      pause = "",
      play = "",
      step_into = "",
      step_over = "",
      step_out = "",
      step_back = "",
      run_last = "",
      terminate = "",
    },
  },
  floating = {
    max_height = nil, -- These can be integers or a float between 0 and 1.
    max_width = nil, -- Floats will be treated as percentage of your screen.
    border = "single", -- Border style. Can be "single", "double" or "rounded"
    mappings = {
      close = { "q", "<Esc>" },
    },
  },
  windows = { indent = 1 },
  render = {
    max_type_length = nil, -- Can be integer or nil.
    max_value_lines = 100, -- Can be integer or nil.
  }
})

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

require('kanagawa').setup({
    undercurl = false,           -- enable undercurls
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true},
    statementStyle = { bold = true },
    typeStyle = {},
    variablebuiltinStyle = { italic = true},
    specialReturn = true,       -- special highlight for the return keyword
    specialException = true,    -- special highlight for exception handling keywords
    transparent = false,        -- do not set background color
    dimInactive = false,        -- dim inactive window `:h hl-NormalNC`
    globalStatus = false,       -- adjust window separators highlight for laststatus=3
    terminalColors = true,      -- define vim.g.terminal_color_{0,17}
	colors = {
		theme = {
			all = {
				ui = {
					bg_gutter = "none"
				}
			}
		}
	},
    theme = "wave"           -- Load "default" theme or the experimental "light" theme
})

vim.cmd("colorscheme kanagawa")
require('lualine').setup {
 	options = {
 		icons_enabled = false,
 		theme = 'kanagawa',
 		component_separators = { left = '', right = ''},
 		section_separators = { left = '', right = ''},
 		disabled_filetypes = {
				'NvimTree',
				'neo-tree',
				'qf',
				'quickfix',
				'vim-plug',
		},
 		always_divide_middle = true,
 	},
 	sections = {
 		lualine_a = {'mode'},
 		lualine_b = {'filename'},
 		lualine_c = {
			{
				'branch',
				icons_enabled = true
			},
			'diff',
			{
					'diagnostics',
					symbols = {error = 'e:', warn = 'w:', info = 'i:', hint = 'h:'},
			},
			'NearestMethodOrFunction'
		},
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
 	extensions = { 'nvim-tree', 'nvim-dap-ui', 'fzf', 'fugitive' },
	refresh = {
		statusline = 1500
	}
}
-- require('nvim-tree').setup {
	-- filters = {
		-- dotfiles = true
	-- },
	-- on_attach = on_attach,
	-- git = {
		-- enable = false,
		-- ignore = true,
		-- timeout = 500
	-- },
	-- actions = {
		-- change_dir = {
			-- global = true
		-- }
	-- },
	-- renderer = {
		-- highlight_git = false,
		-- icons = {
			-- show = {
				-- git = false,
				-- folder = true,
				-- file = true,
				-- folder_arrow = true
			-- },
			-- glyphs = {
				-- default= "",
				-- symlink= "",
				-- git = {
				  -- unstaged = "✗",
				  -- staged = "✓",
				  -- unmerged = "",
				  -- renamed = "➜",
				  -- untracked = "★",
				  -- deleted = "",
				  -- ignored = ""
				-- },
				-- folder = {
				  -- arrow_open = "",
				  -- arrow_closed = "",
				  -- default = "",
				  -- open = "",
				  -- empty = "",
				  -- empty_open = "",
				  -- symlink = "",
				  -- symlink_open = "",
				-- }
			-- }
		-- }
	-- },
	-- open_on_tab = true,
	-- update_cwd = false,
	-- respect_buf_cwd = false,
	-- view = {
		-- relativenumber = false,
		-- preserve_window_proportions = true,
		-- mappings = {
			-- custom_only = true,
		-- }
	-- }
-- }
require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ["<Esc>"] = "close",
        ["<C-f>"] = "close",
        ["<C-s>"] = "close"
      }
    },
	layout_strategy = "flex",
	layout_config = {
		flex = {
			flip_columns = 140
		},
		vertical = {
			width = 0.9
		},
		horizontal = {
			width = 0.9
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
			ignore_patterns = { "*.git/*", "*/node_modules/*", "*/build/*", "*/dist/*" },
			disable_devicons = false,
			show_unindexed = false,
			default_workspace = 'CWD'
		},
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "smart_case",
		}
  }
}
require('telescope').load_extension('fzf')
require('telescope').load_extension('frecency')

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
		hlgroups = {
			"TSRainbowRed",
			"TSRainbowYellow",
			"TSRainbowBlue"
		}
	}
}
require'nvim-web-devicons'.setup {
	default = false;
	override = {
		vue = {
			icon = "v",
			color = "#41B883",
		}
	};
}
EOF

" FUNCTIONS -------------------------------------------------------
function! SetRnu()
	if &ft =~'NvimTree'
		return
	endif
	if &ft =~'neo-tree'
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
	tabdo Neotree close
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
	":NvuiAnimationsEnabled v:false
endif
