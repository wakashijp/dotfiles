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
