"" System Environment Configuration
"
set nocompatible
set noswapfile                      " swp の作成無効化
set nobackup                        " ~ file の作成無効化
set writebackup                     " 上書き作成時に~ file を削除
set clipboard+=unnamed,autoselect   " クリップボードを共有
set backspace=start,eol,indent      " バックスペースキーで削除できるものを指定する
"set tabstop=4                      " タブ文字幅
"set shiftwidth=4                   " インデント幅
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

