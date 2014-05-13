"------------------------------------------------------------
" $B4pK\@_Dj(B
"------------------------------------------------------------
set noswapfile            " $B%9%o%C%W%U%!%$%k$r$D$/$i$J$$(B
set nocompatible          " vi$B8_49%b!<%I$r%*%U!J(Bvim$B$N3HD%5!G=$rM-8z(B)
set hidden                " $BJT=8Cf$G$b!"J]B8$7$J$$$GB>$N%U%!%$%k$r3+$1$k$h$&$K$9$k(B
set confirm               " $B%U%!%$%k$rJ]B8$7$F$$$J$$>l9g$K!"%U%!%$%k$NJ]B8$r3NG'$9$k%@%$%"%m%0$r=P$9(B
set cmdheight=2           " $B2hLL2<It$KI=<($5$l$k%3%^%s%I%i%$%s$N9b$5$N@_Dj(B
set showcmd               " $BF~NO$7$?%3%^%s%I$r%9%F!<%?%9%i%$%s>e$KI=<((B  $BNc$($P(Bd$B$rF~NO$7$?$i(Bd$B$HI=<($5$l$k(B
set scrolloff=5           " $B%+!<%=%k$N>e$^$?$O2<$KI=<($5$l$k:G>.8B$N9T?t(B  5$B$K@_Dj$7$F$"$k$N$G!"2<$K(B5$B9T$OI,$:I=<($5$l$k(B
set visualbell            " $B%S!<%W$NBe$o$j$K%S%8%e%"%k%Y%k!J2hLL%U%i%C%7%e!K$r;H$&(B
set vb t_vb=              " $B%S!<%W$rLD$i$5$J$$(B
set mouse=a               " $BA4%b!<%I$G%^%&%9$rM-8z2=(B

" $B%-!<%3!<%I$O$9$0$K%?%$%`%"%&%H(B  $B%^%C%T%s%0$O%?%$%`%"%&%H$7$J$$(B
set notimeout ttimeout ttimeoutlen=200

"------------------------------------------------------------
" $B%9%F!<%?%9%i%$%s(B
"------------------------------------------------------------
set laststatus=2 " $B%9%F!<%?%9%i%$%s$r>o$KI=<($9$k(B
set ruler        " $B%9%F!<%?%9%i%$%s>e$K%k!<%i!<$rI=<($9$k!J%+!<%=%k$,2?9TL\$N2?NsL\$KCV$+$l$F$$$k$+!K(B

" [$B%U%!%$%k%U%)!<%^%C%H(B][$B%(%s%3!<%G%#%s%0(B][$B2~9T%?%$%W(B] $B9T?t(B, $BNs?t!?AmNs?t(B
set statusline=%F%m%r%h%w\%=[FILETYPE=%Y][ENC=%{&fenc}][%{&ff}]%=%c,\%l/%L

" MEMO
" powerline$B$H$$$&%W%i%0%$%s$rF~$l$k$H%9%F!<%?%9%i%$%s$r6/2=$G$-$k$h$&$@(B
"------------------------------------------------------------
" $B%$%s%G%s%H(B
"------------------------------------------------------------
set autoindent     " $B%*!<%H%$%s%G%s%H(B
set smartindent    " $B?7$7$$9T$r3+;O$7$?;~$K!"?7$7$$9T$N%$%s%G%s%H$r8=:_9T$HF1$8NL$K$9$k(B
set cindent        " C$B%W%m%0%i%`$N<+F0%$%s%G%s%H(B
set expandtab      " $B%?%V%-!<$r6uGr$KJQ49(B
set smarttab       " $B?7$7$$9T$r:n$C$?;~!"9bEY$J<+F0%$%s%G%s%H$r9T$&(B

" $B%*!<%H%$%s%G%s%H!"2~9T!"%$%s%5!<%H%b!<%I3+;OD>8e$K%P%C%/%9%Z!<%9%-!<$G:o=|$G$-$k$h$&$K$9$k(B
set backspace=indent,eol,start

" softtabstop$B$O(BTab$B%-!<2!$72<$2;~$NA^F~$5$l$k6uGr$NNL!$(B0$B$N>l9g$O(Btabstop$B$HF1$8!$(BBS$B$K$b1F6A$9$k(B
set tabstop=4 shiftwidth=4 softtabstop=0

"filetype plugin on " $B%U%!%$%k%?%$%W$N8!:w$rM-8z$K$9$k(B
"filetype indent on " $B%U%!%$%k%?%$%W$K9g$o$;$?%$%s%G%s%H$rMxMQ$9$k(B

" MEMO
" autoindent  : $B2~9T;~$KH>3Q%9%Z!<%9(B8$BJ8;z$rA^F~$9$k(B
" smartindent : $B?7$7$$9T$r$D$/$C$?$H$-$K9bEY$J<+F0%$%s%G%s%H$r9T$&(B  cindent$B$,(BON$B$@$HL58z2=$5$l$k(B
" tabstop     : $B%?%VJ8;z$NI}$r@_Dj$9$k(B  $B%G%U%)%k%H$O(B8
" expandtab   : TAB$B%-!<F~NO;~$K!"%?%VJ8;z$NBe$o$j$K%9%Z!<%9$K$9$k(B
" softtabstop : $B%?%VJ8;z$rF~NO$7$?:]$K%?%VJ8;z$NBe$o$j$KA^F~$5$l$k%[%o%$%H%9%Z!<%9$NNL$r@_Dj$9$k(B  shiftwidth$B$HF1$8CM$K$9$k$HNI$$(B
" shiftwidth  : $B!V(B>>$B!WEy$N%3%^%s%I$d<+F0%$%s%G%s%H$N:]$K;H$&(B1$B%l%Y%kJ,$N%$%s%G%s%HNL$r@_Dj$9$k(B  tabstop$B$HF1$8CM$K$9$k$HNI$$(B


"------------------------------------------------------------
" $BI=<((B
"------------------------------------------------------------
"set number     " $B9THV9f$rI=<((B
set showmatch  " $B%+%C%3$NBP1~$r%O%$%i%$%H(B
set cursorline " $B%+!<%=%k9T$N%O%$%i%$%H(B

" $BA43Q%9%Z!<%9$N%O%$%i%$%HI=<((B
" $B;29M!'(Bhttp://code-life.net/?p=2704
"function! ZenkakuSpace()
"  highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
"endfunction
"
"if has('syntax')
"  augroup ZenkakuSpace
"    autocmd!
"    autocmd ColorScheme       * call ZenkakuSpace()
"    autocmd VimEnter,WinEnter * match ZenkakuSpace /$B!!(B/
"  augroup END
"  call ZenkakuSpace()
"endif

" MEMO
" $BIT2D;kJ8;z$H$O%?%VJ8;z$d9TKvJ8;z$N$3$H$r;X$9(B


"------------------------------------------------------------
" $BJd40(B
"------------------------------------------------------------
set wildmenu       " $B%3%^%s%I%i%$%s%b!<%I$G(BTAB$B%-!<$K$h$kJd40$rM-8z2=(B
set wildchar=<tab> " $B%3%^%s%IJd40$r3+;O$9$k%-!<(B
set history=1000   " $B%3%^%s%I!&8!:w%Q%?!<%s$NMzNr?t(B
set wildmode=list:longest,full

" wildmode$B$N%*%W%7%g%s?'!9(B
" [none]       $B:G=i$N%^%C%A$N$_$rJd40$9$k!#(B
" full         $B<!$N%^%C%A$r40A4$KJd40$9$k!#:G8e$N%^%C%A$N<!$K$O85$NJ8;zNs$,;H$o$l!"$=$N<!$O:F$S:G=i$N%^%C%A$,Jd40$5$l$k(B
" longest      $B6&DL$9$k:GD9$NJ8;zNs$^$G$,Jd40$5$l$k!#$=$l0J>eD9$$J8;zNs$rJd40$G$-$J$$$H$-$O!"<!$N8uJd$K0\$k(B
" longest:full longest$B$H;w$F$$$k$,!"(B'wildmenu' " $B$,M-8z$J$i$P$=$l$r3+;O$9$k(B
" list"        $BJ#?t$N%^%C%A$,$"$k$H$-$O!"A4$F$N%^%C%A$rMeNs$9$k!#(B
" list:full    $BJ#?t$N%^%C%A$,$"$k$H$-$O!"A4$F$N%^%C%A$rMeNs$7!":G=i$N%^%C%A$rJd40$9$k(B
" list:longest $BJ#?t$N%^%C%A$,$"$k$H$-$O!"A4$F$N%^%C%A$rMeNs$7!"6&DL$9$k:GD9$NJ8;zNs$^$G$,Jd40$5$l$k(B

" $BJd40$NGX7J$N?'$r@_Dj(B
hi Pmenu ctermbg=4
hi PmenuSel ctermbg=1
hi PmenuSbar ctermbg=4


"------------------------------------------------------------
" $B%?%0(B
"------------------------------------------------------------
" $B$H$j$"$($:2?$b$7$J$$(B


"------------------------------------------------------------
" $B8!:w(B
"------------------------------------------------------------
set wrapscan   " $B:G8e$^$G8!:w$7$?$i@hF,$KLa$k(B
set ignorecase " $BBgJ8;z>.J8;z$rL5;k$9$k(B
set smartcase  " $B8!:wJ8;zNs$KBgJ8;z$,4^$^$l$F$$$k>l9g$O6hJL$7$F8!:w$9$k(B
set hlsearch   " $B8!:w8l$r6/D4I=<((B
set incsearch  " $B%$%s%/%j%a%s%?%k%5!<%A$rM-8z2=(B

" Esc$B$N(B2$B2s2!$7$G%O%$%i%$%H>C5n(B
nnoremap <Esc><Esc> :nohlsearch<CR><ESC>


"------------------------------------------------------------
" $B0\F0(B
"------------------------------------------------------------
set nostartofline " $B0\F0%3%^%s%I$r;H$C$?$H$-!"9TF,$K0\F0$7$J$$(B

" $B%$%s%5!<%H%b!<%I$G$b(Bhjkl$B$G0\F0!J(BCtrl$B$r2!$7$J$,$i!K(B
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" $B%$%s%5!<%H%b!<%I$G$b:o=|(B
inoremap <C-x> <BS>

"------------------------------------------------------------
" $B%+%i!<(B
"------------------------------------------------------------
syntax enable " $B%O%$%i%$%H$rM-8z2=(B
syntax on     " $B%O%$%i%$%H$rM-8z2=(B

"------------------------------------------------------------
" $BJT=8(B
"------------------------------------------------------------
" $B$H$j$"$($:2?$b$7$J$$(B

"------------------------------------------------------------
" $B%(%s%3!<%G%#%s%0(B
"------------------------------------------------------------
set ffs=unix,dos,mac   " $B2~9TJ8;z(B
set encoding=utf-8     " $B%G%U%)%k%H%(%s%3!<%G%#%s%0(B
set fileencodings=utf-8

"------------------------------------------------------------
" $B$=$NB>(B
"------------------------------------------------------------
" Y$B$NF0:n$r(BD$B$d(BC$B$HF1$8$K$9$k(B
"map Y y$

" $B%^%C%T%s%0$K4X$9$k(BMEMO
" nore$B$,$D$/$b$N$H$D$+$J$$$b$N$N0c$$!J(Bmap$B$H(Bnoremap$B$H$+!K(B
" nore$B$,$D$+$J$$$b$N$r;H$&$H!"%-!<$N:F3dEv$F$,H/@8$9$k(B
" -> map$B$O%-!<%7!<%1%s%9$rE83+$7$?8e!"$5$i$KJL$N%^%C%W$rE,MQ$7$h$&$H$9$k(B
" -> noremap$B$O0lEY$@$1E83+$9$k(B
" ($BNc(B)
" map {A} {X}
" map {B} {A}
" $B>e$N$h$&$K%^%C%T%s%0$5$l$F$$$?>l9g!"(BB$B$r2!$9$H(BA$B$,<B9T$5$l!"$5$i$K(BA$B$K3d$jEv$F$i$l$?(BX$B$,<B9T$5$l$k(B
" noremap$B$@$H%^%C%T%s%0$r(B1$BEY$7$+E83+$7$J$$(B  $B:.Mp$rHr$1$k$?$a$K(Bnore$B7O$rMxMQ$9$k$N$,L5Fq$+$b(B

" noremap  : $B%N!<%^%k%b!<%I!\%S%8%e%"%k%b!<%I(B
" noremap! : $B%3%^%s%I%i%$%s%b!<%I!\%$%s%5!<%H%b!<%I(B
" nnoremap : $B%N!<%^%k%b!<%I8BDj(B
" vnoremap : $B%S%8%e%"%k%b!<%I!JA*Br%b!<%I!K8BDj(B
" cnoremap : $B%3%^%s%I%i%$%s%b!<%I8BDj(B
" inoremap : $BA^F~%b!<%I8BDj(B



" ----------------------------------------------------------------------------------------
"   neobundle
" ----------------------------------------------------------------------------------------
if has('vim_starting')
set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc', {
        \ 'build' : {
                \ 'windows' : 'make -f make_mingw32.mak',
                \ 'cygwin' : 'make -f make_cygwin.mak',
                \ 'mac' : 'make -f make_mac.mak',
                \ 'unix' : 'make -f make_unix.mak',
        \ },
\ }

filetype plugin indent on     " Required!


" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
NeoBundleCheck

" ----------------------------------------------------------------------------------------
" Plugin
" ----------------------------------------------------------------------------------------
"" molokai.vim
"let g:molokai_original = 1
"set t_Co=256
"colorscheme molokai

" neocomplcache
let g:neocomplcache_enable_at_startup = 1 " $B5/F0;~$KM-8z2=(B

"" coffee script
"autocmd BufWritePost *.coffee silent CoffeeMake! -cb | cwindow | redraw!
"
"" unite.vim
"" $BF~NO%b!<%I$G3+;O$9$k(B
"let g:unite_enable_start_insert=0
"
"" ctrlp
"let g:ctrolp_use_migemo    = 1 " $B%_%2%b8!:w(B
"let g:ctrlp_jump_to_buffer = 2 " $B%?%V$G3+$+$l$?>l9g$O$=$N%?%V$K@Z$jBX$($k(B
"let g:ctrlp_open_new_file  = 1 " $B?75,:n@.;~$K%?%V$G3+$/(B
"
"" originalrepos on github
"NeoBundle 'VimClojure'                " vim$B$K$*$1$k%/%m!<%8%c$N3+H/4D6-(B
"NeoBundle 'Shougo/vimshell'           " vim$B$+$i%7%'%k$r5/F0$9$k(B
"NeoBundle 'Shougo/unite.vim'          " vim$B>e$G;HMQ=PMh$kE}9g%f!<%6!<%$%s%?!<%U%'!<%9(B
NeoBundle 'Shougo/neocomplcache'      " $BJd40(B
"NeoBundle 'Shougo/neosnippet'         " $B%9%K%Z%C%H(B
"NeoBundle 'jpalardy/vim-slime'        " ??
""NeoBundle 'mattn/zencoding-vim'       " zencoding$B%W%i%0%$%s(B
"NeoBundle 'othree/html5.vim'          " html5$B$N%?%0$N%+%i!<(B
"NeoBundle 'Townk/vim-autoclose'       " $B%+%C%3$d%@%V%k%3!<%F!<%7%g%s$r<+F0$GJD$8$k(B
"NeoBundle 'kien/ctrlp.vim.git'        " $B%3%^%s%I%i%$%s$G$N%U%!%$%kJd40(B
""NeoBundle 'scrooloose/syntastic.git' " $B%7%s%?%C%/%9$N%A%'%C%/!J=E$?$/$J$k$h$&$J$N$G$H$j$"$($:2r=|!K(B
"NeoBundle 'tpope/vim-pathogen'        " $B%W%i%0%$%s4IM}(B
"NeoBundle 'thinca/vim-quickrun'       " $B3F<o%=!<%9%3!<%I$r$9$P$d$/<B9T(B
"NeoBundle 'scrooloose/nerdcommenter'  " $B%3%a%s%H%"%&%H(B<Leader>c<Space> $B%3%a%s%H%"%&%H2r=|(B<Leadar>cu


" ----------------------------------------------------------------------------------------
"  $B<+J,$G=q$$$?$d$D(B
" ----------------------------------------------------------------------------------------

" No backup
set nobackup


autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" Encoding
" Refs: http://www.tooyama.org/vim-2.html
set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8
