" For vundle
set nocompatible " be iMproved
filetype off " required!
 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
 
" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
 
" original repos on github
"Bundle 'mattn/zencoding-vim'
Bundle 'drmingdrmer/xptemplate'
Bundle 'tpope/vim-fugitive'
Bundle 'Auto-Pairs'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-powerline'
Bundle 'vim-scripts/SingleCompile'
Bundle 'mattn/zencoding-vim'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-markdown'
" vim-scripts repos
Bundle 'EnhCommentify.vim'
Bundle 'a.vim'
Bundle 'OmniCppComplete.vim'
Bundle 'vim-javacompleteex'
Bundle 'DoxygenToolkit.vim'
"Bundle 'NERD_commenter.vim'
"Bundle 'The-NERD-Commenter'
Bundle 'bufexplorer.zip'
Bundle 'majutsushi/tagbar'
Bundle 'The-NERD-tree'
Bundle 'winmanager'
Bundle 'SuperTab'
Bundle 'minibufexpl.vim'
Bundle 'Markdown'
Bundle 'c.vim'
Bundle 'snipMate'
Bundle 'bash-support.vim'
Bundle 'perl-support.vim'
 
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'Mark'
Bundle 'matrix.vim'
Bundle 'closetag.vim'
Bundle 'matchit.zip'
Bundle 'AutoComplPop'
Bundle 'jsbeautify'
Bundle 'YankRing.vim'
Bundle 'vimwiki'
Bundle 'matrix.vim--Yang'
Bundle 'FencView.vim'
Bundle 'Conque-Shell'
Bundle 'Yggdroot/indentLine'
Bundle 'airblade/vim-gitgutter'
Bundle 'gregsexton/gitv'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-surround'
Bundle 'Raimondi/delimitMate'
" non github reposo
" 非github的插件，可以直接使用其git地址
" Bundle 'git://git.wincent.com/command-t.git'
" ...
 
"Bundle 支持的格式有三种：
"第一种是一个普通的字符串，就是 vim 插件页面里左上角的插件名字，如果插件名有空格，使用 - 替换。
"第二种是github帐号/项目名。
"第三种就是git repository
"现在大家就可以使用 :BundleInstall ，:BundleInstall! 来下载插件和更新插件了，是不是很方便。
"
" Brief help
" :BundleList - list configured bundles
" :BundleInstall(!) - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!) - confirm(or auto-approve) removal of unused bundles
" vundle主要就是上面这个四个命令，例如BundleInstall是全部重新安装，BundleInstall!则是更新
" 一般安装插件的流程为，先BundleSearch一个插件，然后在列表中选中，按i安装
" 安装完之后，在vimrc中，添加Bundle 'XXX'，使得bundle能够加载，这个插件，同时如果
" 需要配置这个插件，也是在vimrc中设置即可
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
 
 
 
syn on "语法支持
"common conf {{ 通用配置
set ai "自动缩进
set bs=2 "在insert模式下用退格键删除
set showmatch "代码匹配
set laststatus=2 "总是显示状态行
set expandtab "以下三个配置配合使用，设置tab和缩进空格数
set shiftwidth=4
set tabstop=4
set cursorline "为光标所在行加下划线
set number "显示行号
set autoread "文件在Vim之外修改过，自动重新读入
set ignorecase "检索时忽略大小写
set hls "检索时高亮显示匹配项
set helplang=cn "帮助系统设置为中文
"set foldmethod=syntax "代码折叠
"检测文件类型，对于依赖文件类型功能有用
set history=1000
set vb t_vb=
"set nohls
set mouse=a
set cindent
set incsearch
set cursorline
set nobackup " make backup file
set autowrite " auto writefile when sth happened such as :make or :last or others.See the help
set makeef=error.err " When using make, where should it dump the file
set wildmenu " turn on wild menu
set ruler " Always show current positions along the bottom
set backspace=indent,eol,start
set so=7 "距下面的行数为7
colorscheme desert

highlight PmenuSel ctermbg=lightblue            "vim console中选中背景
highlight Pmenu    guibg=darkgrey  guifg=black  "Pmenu 是所有项的配色，
highlight PmenuSel guibg=lightgrey guifg=black  "PmenuSel 是选中项的配色，guibg 和 guifg 分别对应背景色和前景色。

set tabstop=4 " tab spacing (settings below are just to unify it)
set softtabstop=4 " unify
set shiftwidth=4 " unify
set nowrap " do not wrap lines
set smarttab " use tabs at the start of a line, spaces elsewhere
"解决乱码
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
set fileencodings=ucs-bom,utf-8,gb18030,big5,gbk,gb2312,cp936
set viminfo+=! " make sure it can save viminfo
set isk+=_,$,@,%,#,- " none of these should be word dividers, so make them not be
"keep the last close cursor position
if has("autocmd")
autocmd BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "normal g`\"" |
\ endif
endif
 
 
"}}
 
"conf for tabs, 为标签页进行的配置，通过ctrl h/l切换标签等
"let mapleader = ','
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>
 
"conf for plugins {{ 插件相关的配置
""进行Tlist的设置
"""TlistUpdate可以更新tags
"map <F3> :silent! Tlist<CR> "按下F3就可以呼出了
"let Tlist_Ctags_Cmd='ctags' "因为我们放在环境变量里，所以可以直接执行
"let Tlist_Use_Right_Window=1 "让窗口显示在右边，0的话就是显示在左边
let Tlist_Show_One_File=1 "让taglist可以同时展示多个文件的函数列表，如果想只有1个，设置为1
"let Tlist_File_Fold_Auto_Close=1 "非当前文件，函数列表折叠隐藏
let Tlist_Exit_OnlyWindow=1 "当taglist是最后一个分割窗口时，自动推出vim
""是否一直处理tags.1:处理;0:不处理
""let Tlist_Process_File_Always=0 "不是一直实时更新tags，因为没有必要
""let Tlist_Inc_Winwidth=0
map <F3> :silent! Tlist<CR>
 
let g:winManagerWindowLayout='TagList|FileExplorer'
nmap wm :WMToggle<cr>
 
let g:miniBufExplMapWindowNavVim = 1
 
"xptemplate
let g:xptemplate_brace_complete=0
let g:xptemplate_key = '<Tab>'
let g:xptemplate_nav_prev = '<C-k>'
 
" -- MiniBufferExplorer -- "
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMapWindowNavVim = 1 "<C-h,j,k,l>
"DoxygenToolkit
map fg : Dox<cr>
let g:DoxygenToolkit_authorName="owenzhang, owenzhang2010@qq.com"
let s:licenseTag = "Tencent.Co.Ltd\<enter>"
let s:licenseTag = s:licenseTag . "All right reserved\<enter>"
let g:DoxygenToolkit_licenseTag = s:licenseTag
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1
 
" --- OmniCppComplete ---
 
"set completeopt=menu
" -- ctags --
" " map <ctrl>+F12 to generate ctags for current folder:
" map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>
"map <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q . ~/code/commlib32_proj/trunk/baselib/<CR><CR>
" " add current directory's generated tags file to available tags
"set tags+=./tags
"map <F12> :!ctags -R *<CR>
"map <F12> :!ctags -R . ~/code/commlib32_proj/trunk/baselib/ <CR>
"nnoremap ,t :sil !find -maxdepth 1 -name '*.[ch]' -print0 -o
" \ -name '*.cpp' -print0 \| xargs -0 ctags --c++-kinds=+p --fields=+iaS --extra=+q <cr>
 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set cscopequickfix=s-,c-,d-,i-,t-,e-
if(has("win32") || has("win95") || has("win64") || has("win16"))
let g:iswindows=1
else
let g:iswindows=0
endif
autocmd BufEnter * lcd %:p:h
autocmd FileType python,shell set commentstring=#\ %s
autocmd FileType mako set cms=##\ %s
 
 
map <F12> :call Do_CsTag()<CR>
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>:copen<CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>:copen<CR>
"nmap <C-_>i :cs find i <C-R>=expand("<cfile>")<CR><CR>:copen<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>:copen<CR>
function Do_CsTag()
let dir = getcwd()
if filereadable("tags")
if(g:iswindows==1)
let tagsdeleted=delete(dir."\\"."tags")
else
let tagsdeleted=delete("./"."tags")
endif
if(tagsdeleted!=0)
echohl WarningMsg | echo "Fail to do tags! I cannot delete the tags" | echohl None
return
endif
endif
if has("cscope")
silent! execute "cs kill -1"
endif
if filereadable("cscope.files")
if(g:iswindows==1)
let csfilesdeleted=delete(dir."\\"."cscope.files")
else
let csfilesdeleted=delete("./"."cscope.files")
endif
if(csfilesdeleted!=0)
echohl WarningMsg | echo "Fail to do cscope! I cannot delete the cscope.files" | echohl None
return
endif
endif
if filereadable("cscope.out")
if(g:iswindows==1)
let csoutdeleted=delete(dir."\\"."cscope.out")
else
let csoutdeleted=delete("./"."cscope.out")
endif
if(csoutdeleted!=0)
echohl WarningMsg | echo "Fail to do cscope! I cannot delete the cscope.out" | echohl None
return
endif
endif
if(executable('ctags'))
"silent! execute "!ctags -R --c-types=+p --fields=+S *"
silent! execute "!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q ."
endif
if(executable('cscope') && has("cscope") )
if(g:iswindows!=1)
silent! execute "!find . -name '*.h' -o -name '*.c' -o -name '*.cpp' -o -name '*.java' -o -name '*.cs' > cscope.files"
else
silent! execute "!dir /s/b *.c,*.cpp,*.h,*.java,*.cs >> cscope.files"
endif
silent! execute "!cscope -b"
execute "normal :"
if filereadable("cscope.out")
execute "cs add cscope.out"
endif
endif
endfunction
 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"if has("cscope")
" set csprg=/usr/bin/cscope
" set csto=1
" set cst
" set nocsverb
"" add any database in current directory
" if filereadable("cscope.out")
" cs add cscope.out
" endif
" set csverb
"endif
 
"nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
"nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>
 
 
"if filereadable("feed.vim")
" source feed.vim
"endif
"set tags+=/data/home/owenzhang/feedcenter_proj/trunk/tags,/data/home/owenzhang/code/commlib32_proj/trunk/tags
 
":cs add /data/home/owenzhang/feedcenter_proj/trunk/cscope.out /data/home/owenzhang/feedcenter_proj/trunk/
 
"}}
 
func! CompileGcc()
exec "w"
let compilecmd="!gcc "
let compileflag="-o %< "
if search("mpi\.h") != 0
let compilecmd = "!mpicc "
endif
if search("glut\.h") != 0
let compileflag .= " -lglut -lGLU -lGL "
endif
if search("cv\.h") != 0
let compileflag .= " -lcv -lhighgui -lcvaux "
endif
if search("omp\.h") != 0
let compileflag .= " -fopenmp "
endif
if search("math\.h") != 0
let compileflag .= " -lm "
endif
exec compilecmd." % ".compileflag
endfunc
func! CompileGpp()
exec "w"
let compilecmd="!g++ "
let compileflag="-o %< "
if search("mpi\.h") != 0
let compilecmd = "!mpic++ "
endif
if search("glut\.h") != 0
let compileflag .= " -lglut -lGLU -lGL "
endif
if search("cv\.h") != 0
let compileflag .= " -lcv -lhighgui -lcvaux "
endif
if search("omp\.h") != 0
let compileflag .= " -fopenmp "
endif
if search("math\.h") != 0
let compileflag .= " -lm "
endif
exec compilecmd." % ".compileflag
endfunc
func! CompileCode()
exec "w"
if &filetype == "cpp"
exec "call CompileGpp()" elseif &filetype == "c"
exec "call CompileGcc()"
endif
endfunc
func! RunResult()
exec "w"
if search("mpi\.h") != 0
exec "!mpirun -np 4 ./%<"
elseif &filetype == "cpp"
exec "! ./%<"
elseif &filetype == "c"
exec "! ./%<"
elseif &filetype == "python"
exec "call RunPython"
elseif &filetype == "java"
exec "!java %<"
endif
endfunc
map <F5> :call CompileCode()<CR>
imap <F5> <ESC>:call CompileCode()<CR>
vmap <F5> <ESC>:call CompileCode()<CR>
map <F6> :call RunResult()<CR>
 
 
function! s:insert_gates()
let gatename = substitute(toupper(expand("%:t")), "\\.", "_", "g")
execute "normal! i#ifndef " . gatename
execute "normal! o#define " . gatename . " "
execute "normal! Go#endif /* " . gatename . " */"
normal! kk
endfunction
autocmd BufNewFile *.{h,hpp} call <SID>insert_gates()
