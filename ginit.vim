if !exists('g:GtkGuiLoaded')
	GuiTabline 0
	GuiPopupmenu 0
	GuiRenderLigatures 1
else
	call rpcnotify(1, 'Gui', 'Option', 'Popupmenu', 0) 
	call rpcnotify(1, 'Gui', 'Option', 'Tabline', 0)
	call rpcnotify(1, 'Gui', 'Command', 'SetCursorBlink', '0')
endif

call GuiClipboard()

let s:fontsize = 10
"let s:font = "JetBrainsMono Nerd Font Mono"
let s:font = "FiraCode Nerd Font Mono:w53"
"let s:font = "ProggyCleanTTCE Nerd Font Mono"
"let s:font = "ProggyCleanTT Nerd Font Mono"
"let s:font = "ProggyCleanTTSZ Nerd Font Mono"
"let s:font = "Dina"
"let s:font = "Gohu GohuFont"

function! AdjustFontSize(amnt)
	let s:fontsize = s:fontsize + a:amnt
	execute 'GuiFont! ' . s:font . ':h' . s:fontsize
endfunction
call AdjustFontSize(0)

function! RefreshLightline()
	call lightline#init()
	call lightline#update()
endfunction

command! Retro :call SetTheme("retro")
command! Normal :call SetTheme("default")

let g:themes = {
	\ 'default': {
		\ 'font': 'FiraCode Nerd Font Mono',
		\ 'fontsize': 10,
		\ 'colorscheme': 'tokyodark'
	\ },
	\ 'retro': {
		\ 'font': 'Ac437 IBM EGA 8x8',
		\ 'fontsize': 12,
		\ 'colorscheme': 'palenight'
	\ }
\ }

function! SetTheme(name)
	let s:font = g:themes[a:name].font
	let s:fontsize = g:themes[a:name].fontsize
	"let g:lightline = g:lightline_themes[a:name]
	"call RefreshLightline()
	execute ":colorscheme " . g:themes[a:name].colorscheme
	call AdjustFontSize(0)
	if exists ('g:loaded_webdevicons')
		call webdevicons#refresh()
	endif
endfunction

nnoremap <C-ScrollWheelUp> :call AdjustFontSize(1)<CR>
nnoremap <C-ScrollWheelDown> :call AdjustFontSize(-1)<CR>
inoremap <C-ScrollWheelUp> :call AdjustFontSize(1)<CR>
inoremap <C-ScrollWheelDown> :call AdjustFontSize(-1)<CR>
