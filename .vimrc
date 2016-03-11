" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif
set nocompatible	" Be IMproved
set ambiwidth=double
"set backspace=

if has('vim_starting')
	" Required:
	set runtimepath+=$HOME/.vim/bundle/neobundle.vim/,$HOME/.vim/plugin
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" ここから NeoBundle でプラグインを設定します

" NeoBundle で管理するプラグインを追加します。
NeoBundle 'vim-jp/vimdoc-ja'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'

" IR_Black
NeoBundle 'twerth/ir_black'

NeoBundle 'hotchpotch/perldoc-vim'
NeoBundle 'vim-perl/vim-perl'
NeoBundle 'thinca/vim-quickrun'
"NeoBundle 'vim-scripts/errormarker.vim'

"NeoBundleのインストール方法
"% mkdir -p ~/vim/bundle
"% git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

colorscheme darkdevel
filetype indent on
syntax on
set encoding=utf-8
set fileencodings=utf-8,euc-jp,iso-2022-jp,sjis
set fileformats=unix,dos,mac
set autoindent
if has("cscope")
	set cscopequickfix=s-,c-,d-,i-,t-,e-
endif


"##### auto fcitx  ###########
let g:input_toggle = 0
function! Fcitx2en()
	let s:input_status = system("fcitx-remote")
	if s:input_status == 2
		let g:input_toggle = 1
		let l:a = system("fcitx-remote -c")
	endif
endfunction

function! Fcitx2zh()
	let s:input_status = system("fcitx-remote")
	if s:input_status != 2 && g:input_toggle == 1
		let l:a = system("fcitx-remote -o")
		let g:input_toggle = 0
	endif
endfunction

set ttimeoutlen=150
" exit insert mode
autocmd InsertLeave * call Fcitx2en()
" enter insert mode
autocmd InsertEnter * call Fcitx2zh()
"##### auto fcitx end ######
