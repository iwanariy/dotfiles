"------------------------------------------------------------
" 基本設定
"------------------------------------------------------------
set noswapfile            " スワップファイルをつくらない
set nobackup              " バックアップファイル（xxx.txt~）を作らない
set nocompatible          " vi互換モードをオフ（vimの拡張機能を有効)
set hidden                " 編集中でも、保存しないで他のファイルを開けるようにする
set cmdheight=2           " 画面下部に表示されるコマンドラインの高さの設定
set showcmd               " 入力したコマンドをステータスライン上に表示  例えばdを入力したらdと表示される
set scrolloff=5           " カーソルの上または下に表示される最小限の行数  5に設定してあるので、下に5行は必ず表示される
set visualbell            " ビープの代わりにビジュアルベル（画面フラッシュ）を使う
set vb t_vb=              " ビープを鳴らさない
" set mouse=a               " 全モードでマウスを有効化

" キーコードはすぐにタイムアウト  マッピングはタイムアウトしない
set notimeout ttimeout ttimeoutlen=200


"------------------------------------------------------------
" ステータスライン
"------------------------------------------------------------
set laststatus=2 " ステータスラインを常に表示する
set ruler        " ステータスライン上にルーラーを表示する（カーソルが何行目の何列目に置かれているか）

" [ファイルフォーマット][エンコーディング][改行タイプ] 行数, 列数／総列数
set statusline=%F%m%r%h%w\%=[FILETYPE=%Y][ENC=%{&fenc}][%{&ff}]%=%c,\%l/%L


"------------------------------------------------------------
" インデント
"------------------------------------------------------------
set autoindent     " オートインデント
set smartindent    " 新しい行を開始した時に、新しい行のインデントを現在行と同じ量にする
set expandtab      " タブキーを空白に変換
set smarttab       " 新しい行を作った時、高度な自動インデントを行う

" オートインデント、改行、インサートモード開始直後にバックスペースキーで削除できるようにする
set backspace=indent,eol,start

set tabstop=2 shiftwidth=2 softtabstop=0
autocmd BufNew,BufRead *.py setlocal tabstop=4 shiftwidth=4 softtabstop=0
autocmd BufNew,BufRead *.rb setlocal tabstop=2 shiftwidth=2 softtabstop=0


"------------------------------------------------------------
" 表示
"------------------------------------------------------------
set showmatch  " カッコの対応をハイライト
set cursorline " カーソル行のハイライト
colorscheme elflord
" gvimで白とびする問題に対応
if has('gui_macvim')
  colorscheme shine
endif


"------------------------------------------------------------
" 補完
"------------------------------------------------------------
set wildmenu       " コマンドラインモードでTABキーによる補完を有効化
set wildchar=<tab> " コマンド補完を開始するキー
set history=1000   " コマンド・検索パターンの履歴数
set wildmode=list:longest,full

" 補完の背景の色を設定
hi Pmenu ctermbg=4
hi PmenuSel ctermbg=1
hi PmenuSbar ctermbg=4


"------------------------------------------------------------
" 検索
"------------------------------------------------------------
set wrapscan   " 最後まで検索したら先頭に戻る
set ignorecase " 大文字小文字を無視する
set smartcase  " 検索文字列に大文字が含まれている場合は区別して検索する
set hlsearch   " 検索語を強調表示
set incsearch  " インクリメンタルサーチを有効化

" Escの2回押しでハイライト消去
nnoremap <Esc><Esc> :nohlsearch<CR><ESC>
nnoremap <C-e> :!python %


"------------------------------------------------------------
" 移動
"------------------------------------------------------------
set nostartofline " 移動コマンドを使ったとき、行頭に移動しない


"------------------------------------------------------------
" カラー
"------------------------------------------------------------
syntax enable " ハイライトを有効化
syntax on     " ハイライトを有効化


"------------------------------------------------------------
" エンコーディング
"------------------------------------------------------------
set ffs=unix,dos,mac   " 改行文字
set encoding=utf-8     " デフォルトエンコーディング
set fileencodings=utf-8,iso-2022-jp,cp932,sjis,euc-jp


" ----------------------------------------------------------------------------------------
"   neobundle
" ----------------------------------------------------------------------------------------
if has('vim_starting')
set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Installation check.
NeoBundleCheck

" ----------------------------------------------------------------------------------------
" Plugin
" ----------------------------------------------------------------------------------------

NeoBundle 'Shougo/unite.vim'          " vim上で使用出来る統合ユーザーインターフェース
NeoBundle 'Shougo/neocomplete'      " 補完
"NeoBundle 'Townk/vim-autoclose'       " カッコやダブルコーテーションを自動で閉じる
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'fatih/vim-go'              " golang
NeoBundle 'Shougo/vimproc', {
        \ 'build' : {
                \ 'windows' : 'make -f make_mingw32.mak',
                \ 'cygwin' : 'make -f make_cygwin.mak',
                \ 'mac' : 'make -f make_mac.mak',
                \ 'unix' : 'make -f make_unix.mak',
        \ },
\ }
NeoBundle 'davidhalter/jedi-vim'

" markdown
NeoBundle 'kannokanno/previm'
augroup PrevimSettings
    autocmd!
    autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END
let g:previm_open_cmd = 'open -a Safari'

NeoBundleLazy "nvie/vim-flake8", {
      \ "autoload": {
      \   "filetypes": ["python", "python3", "djangohtml"]
      \ }}
autocmd BufWritePost *.py call Flake8()

call neobundle#end()


" Required:
filetype plugin indent on

" neocomplete
let g:neocomplete#enable_at_startup = 1
if !exists('g:neocomplete#omni_patterns')
    let g:neocomplete#omni_patterns = {}
endif
let g:neocomplete#omni_patterns.go = '\h\w*\.\?'

"------------------------------------------------------------
" vim-go
"------------------------------------------------------------
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>t <Plug>(go-test)

"------------------------------------------------------------
" serverspec-snippets
"------------------------------------------------------------
NeoBundle 'glidenote/serverspec-snippets'
" setting example
let g:neosnippet#snippets_directory = [
    \'~/.vim/snippets',
    \'~/.vim/bundle/serverspec-snippets',
    \]

"------------------------------------------------------------
" unite.vim
"------------------------------------------------------------
" unite prefix key.
nnoremap [unite] <Nop>
nmap <Space>u [unite]
" 入力モードで開始する
let g:unite_enable_start_insert=1
" ファイル一覧
nnoremap <silent> [unite]f :<C-u>UniteWithBufferDir -buffer-name=files file file/new directory/new<CR>
call unite#custom_default_action('file', 'tabopen')

"------------------------------------------------------------
" jedi-vim
"------------------------------------------------------------
autocmd FileType python setlocal completeopt-=preview
