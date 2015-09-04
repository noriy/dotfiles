" Note: Skip initialization for vim-tiny or vim-small.
" if !1 | finish | endif
set nocompatible	" Be IMproved
set ambiwidth=double
"set backspace=

if has('vim_starting')
	" Required:
	set runtimepath+=$HOME/.vim/bundle/neobundle.vim/
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
"% mkdir -p ~.vim/bundle
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
:set encoding=utf-8
:set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
:set fileformats=unix,dos,mac
