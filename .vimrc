" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif
set nocompatible	" Be IMproved
set ambiwidth=double
"set backspace=
set runtimepath+=~/.vim/plugin

"
" vim-jp/vimdoc-ja: vim 日本語help
"
set runtimepath+=~/.vim/vimdoc-ja
set helplang=ja,en


colorscheme darkdevel
filetype indent on
syntax on
set encoding=utf-8
set fileencodings=utf-8,euc-jp,iso-2022-jp,sjis
set fileformats=unix,dos,mac
set autoindent
if has("cscope")
	" cscope -R -b -k -q ; -k: kernel mode
	set cscopequickfix=s-,c-,d-,i-,t-,e-
	source ~/.vim/plugin/autoload_cscope.vim
	set csverb
	silent! map <unique> <C-\>p :cprev<CR>
	silent! map <unique> <C-\>n :cnext<CR>
	silent! map <unique> <C-\>r :gr -rI <C-R>=expand("<cword>")<CR> .<CR>
endif


"##### auto fcitx  ###########
source ~/.vim/plugin/fcitx-py.vim

if g:fcitxpy_enabled == 1
	let g:input_toggle = 0
	function! Fcitx2en()
		let s:input_status = FcitxPyGet()
		if s:input_status == 1
			let g:input_toggle = 1
			let l:a = FcitxPySet(0)
		endif
	endfunction

	function! Fcitx2zh()
		let s:input_status = FcitxPyGet()
		if s:input_status != 1 && g:input_toggle == 1
			let l:a = FcitxPySet(1)
			let g:input_toggle = 0
		endif
	endfunction

	set timeout timeoutlen=3000 ttimeoutlen=50
	" exit insert mode
	autocmd InsertLeave * call Fcitx2en()
	" enter insert mode
	autocmd InsertEnter * call Fcitx2zh()
	"##### auto fcitx end ######
endif
