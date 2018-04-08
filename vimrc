"" System Environment Configuration
"
"set nocompatible
set noswapfile                      " swp の作成無効化
set nobackup                        " ~ file の作成無効化
set writebackup                     " 上書き作成時に~ file を削除
set clipboard+=unnamed,autoselect   " クリップボードを共有
set backspace=start,eol,indent      " バックスペースキーで削除できるものを指定する
set tabstop=4                       " タブ文字幅
set shiftwidth=4                    " インデント幅
set expandtab                       " タブ文字の代わりにスペースを挿入する
set history=50                      " 検索履歴を50個残す
set visualbell t_vb=                " ビープ音を無効にする
set noerrorbells                    " エラーメッセージの表示時にビープ音を鳴らさない

"" Encoding Configuration
"
set encoding=utf-8                                  " 標準の文字コード
set fileencoding=utf-8                              " 保存するファイル
set fileencodings=utf-8,iso-2022-jp,euc-jp,cp932    " 文字コード自動判別
set fileformats=unix,dos,mac                        " 改行コード自動認識

"" Keybind Configuration
"
nnoremap ; :

"" ColorScheme Configuration
"
set t_Co=256
"colorscheme molokai
"let g:molokai_original=1
"set background=dark
"highlight Normal ctermbg=none
colorscheme atom-dark-256

"" View Configuration
"
syntax on                                                           " ハイライト表示
set title                                                           " タイトル表示
set number                                                          " 行番号表示
set list                                                            " 改行 ( $ )やタブ( ^I )を可視化する
set listchars=tab:>.,trail:_,eol:↲,extends:»,precedes:«,nbsp:%      " 制御文字を可視化する際の文字を指定する
set wrap                                                            " ウインドウ幅で行を折り返す
set smartindent                                                     " オートインデント
set showmatch                                                       " 括弧入力時の対応する括弧を表示
set showmode                                                        " 現在のモードを表示する
set cursorline                                                      " 現在の行をハイライト表示
hi clear CursorLine                                                 " 現在の行の行番号のみハイライト表示

" 現在の行の行番号のみをハイライト表示
hi CursorLineNr term=bold cterm=none ctermfg=13 ctermbg=none

"" Search Configuration
"
set ignorecase              " 大文字/小文字の区別なく検索する
set hlsearch                " 検索語にマッチした単語をハイライトする
set incsearch               " インクリメンタルサーチ( 検索語を入れている途中から臨時マッチする文字列の検索を開始 )
set smartcase               " 検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan                " 検索時に最後まで行ったら最初に戻る

"" dein.vim Install Configuration

" dein path setting
let s:dein_dir = fnamemodify('~/.vim/dein/', ':p')
let s:dein_repo_dir = s:dein_dir . 'repos/github.com/Shougo/dein.vim'

" dein.vim check and install
if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' shellescape(s:dein_repo_dir)
endif

" add dein.vim in runtimepath
if &runtimepath !~# 'dein.vim'
    execute 'set runtimepath^=' . s:dein_repo_dir
endif

call dein#begin(s:dein_dir)
call dein#add('Shougo/neocomplcache')

" plugins
call dein#add('Shougo/unite.vim')
call dein#add('itchyny/lightline.vim')
call dein#add('nvie/vim-flake8')

call dein#end()
filetype plugin indent on
syntax enable

" set lightline
set laststatus=2

" install plugins
if dein#check_install()
    call dein#install()
endif


"" NeoBundle Install Configuration
" mkdir -p ~/.vim/bundle
" cd ~/.vim/bundle
" git clone https://github.com/Shougo/neobundle.vim.git
"
"if isdirectory( expand("~/.vim/bundle/neobundle.vim") )
"
"    " Note: Skip initialization for vim-tiny or vim-small.
"    if !1 | finish | endif
"
"    if has('vim_starting')
"        if &compatible
"            set nocompatible			" Be iMpoved
"        endif
"
"        " Required:
"        set runtimepath+=~/.vim/bundle/neobundle.vim/
"    endif
"
"    " Required:
"    call neobundle#begin(expand('~/.vim/bundle/'))
"
"    " Let NeoBundle manager NeoBundle
"    " Required:
"    NeoBundleFetch 'Shougo/neobundle.vim'
"
"    " My Bundles here:
"    " Refer to |:NeoBundle-examples|.
"    " Note: You don't set neobundle setting in .gmimrc!
"    NeoBundle 'altercation/vim-colors-solarized'
"    NeoBundle 'tomasr/molokai'
"    NeoBundle 'Shougo/unite.vim'
"    NeoBundle 'itchyny/lightline.vim'
"    NeoBundle 'nvie/vim-flake8'
"
"    call neobundle#end()
"
"    " Required:
"    filetype off
"    filetype plugin indent on
"    filetype indent on
"
"    " set lightline
"    set laststatus=2
"
"    " If there are uninstalled bundles found on startup.
"    " this will coveniently prompt you to install them.
"    NeoBundleCheck
"
"endif

