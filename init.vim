if exists('g:vscode')
	echo "vscode..."
	
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
	set background=dark
else
	echo "local..."
	:source ~/.config/nvim/init-local.vim
endif
