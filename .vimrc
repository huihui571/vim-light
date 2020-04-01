"let mapleader="\<Space>"
set encoding=utf-8
set ambiwidth=double
set fileencodings=utf-8,gb2312,gbK,gb18030
set termencoding=utf-8
set fileformats=unix

""################### key map setting #########################################
" 常规模式下用空格键来开关光标行所在折叠（注：zR 展开所有折叠，zM 关闭所有折叠）
nnoremap <Leader>fd @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

" 当文件在外部被修改，自动更新该文件
set autoread

" 常规模式下输入 cS 清除行尾空格
nnoremap cS :%s/\s\+$//g<CR>:noh<CR>
" 常规模式下输入 cM 清除行尾 ^M 符号
nnoremap cM :%s/\r$//g<CR>:noh<CR>
" 空格+回车清除搜索高亮
noremap <Leader><CR> :nohlsearch<CR>
" 窗口分割
noremap sj :set splitbelow<CR>:split<CR>
noremap sk :set nosplitbelow<CR>:split<CR>
noremap sl :set splitright<CR>:vsplit<CR>
noremap sh :set nosplitright<CR>:vsplit<CR>
" 移动
 noremap J 5j
 noremap K 5k
 noremap L 5l
 noremap H 5h
 " Ctrl + J 插入模式下光标向下移动
 imap <c-j> <Down>
 " Ctrl + K 插入模式下光标向上移动
 imap <c-k> <Up>
 " Ctrl + L 插入模式下光标向右移动
 imap <c-l> <Right>
 " Ctrl + H 插入模式下光标向左移动
 imap <c-h> <Left>
 " 可用<C-k,j,h,l>切换到上下左右的窗口中去
 noremap <c-j> <c-w>j
 noremap <c-k> <c-w>k
 noremap <c-l> <c-w>l
 noremap <c-h> <c-w>h
 " Ctrl + ^ 光标跳转到行头
 imap <c-6> <ESC>0i
 " Ctrl + $ 光标跳转到行尾
 imap <c-4> <ESC>$i

" 全选 
 nmap <c-a> ggVG$
 imap <c-a> <ESC>ggVG$

" 搜索
 noremap vim :vim /<C-R><C-W>../**<CR>:copen<CR>

" <ESC>
 inoremap <Leader>[ <ESC>
"退出
 nmap <S-q> :q<CR>

" 启用每行超过80列的字符提示（字体变蓝并加下划线），不启用就注释掉
au BufWinEnter * let w:m2=matchadd('Underlined', '\%>' . 80 . 'v.\+', -1)

" 括号补全
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
"inoremap ( ()<ESC>i
inoremap <silent>  (   ()<ESC>i<c-r>=EchoFunc()<cr>
"inoremap ) <c-r>=ClosePair(')')<CR>
inoremap <silent>  )   <c-r>=ClosePair(')')<CR><c-r>=EchoFuncClear()<cr>
inoremap [ []<ESC>i
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap { {}<ESC>i
inoremap } <c-r>=ClosePair('}')<CR>
"inoremap < <><ESC>i
"inoremap > <c-r>=ClosePair('>')<CR>
function ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf

"####################Set Plug-In Management On#################
"#Should placed before 'filetype on'
call pathogen#infect()

"enfold the fold
set foldmethod=marker

"let g:fencview_autodetect=1
"####################Set ColorScheme#################
colorscheme desert

"不要使用vi的键盘模式，而是vim自己的
set nocompatible

" 语法高亮
set syntax=on
syntax enable

" 去掉输入错误的提示声音
set noeb

" 在处理未保存或只读文件的时候，弹出确认
set confirm

" 自动缩进
set autoindent
set cindent

"Tab键的宽度
set tabstop=4

"统一缩进为4
set softtabstop=4
set shiftwidth=4

" 用空格代替制表符
set expandtab

" 在行和段开始处使用制表符
set smarttab

" 显示行号
" set number
set norelativenumber

" 历史记录数
set history=1000

"禁止生成临时文件
set nobackup
set noswapfile

"搜索忽略大小写
"set ignorecase
set smartcase

"搜索逐字符高亮
set hlsearch
set incsearch

"行内替换
set gdefault

"编码设置
"set enc=utf-8
"set fencs=ucs-bom,utf-8,shift-jis,gb2312,gb18030,gbk,cp936
set fenc=gbk

"字体设置
set guifont=Monospace\ 10

"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn

" 我的状态行显示的内容（包括文件类型和解码）
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]

" 总是显示状态行
set laststatus=2

" 在编辑过程中，在右下角显示光标位置的状态行
set ruler           

" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=2

" 侦测文件类型
filetype on

" 载入文件类型插件
filetype plugin on

"####################Set AutoComplete On#################
set completeopt=longest,menu

" 为特定文件类型载入相关缩进文件
filetype indent on

" 保存全局变量
set viminfo+=!

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

" 字符间插入的像素行数目
set linespace=0

" 增强模式中的命令行自动完成操作
set wildmenu

" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2

" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key

" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0

" 启动的时候不显示那个援助索马里儿童的提示
set shortmess=atI

" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\

" 高亮显示匹配的括号
set showmatch

" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=5

" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3

" 为C程序提供自动缩进
set smartindent

" Vim能自动识别UNIX格式和MS-DOS格式
set fileformats=unix,dos

" vim版本大于7.1，用dos显示和保存
"e ++ff=dos


" 只在下列文件类型被侦测到的时候显示行号，普通文本文件不显示
if has("autocmd")
   autocmd FileType xml,html,c,cs,java,perl,shell,bash,cpp,python,vim,php,ruby set number
   autocmd FileType xml,html vmap <C-o> <ESC>'<i<!--<ESC>o<ESC>'>o-->
   autocmd FileType java,c,cpp,cs vmap <C-o> <ESC>'<o/*<ESC>'>o*/
   autocmd FileType html,text,php,vim,c,java,xml,bash,shell,perl,python setlocal textwidth=100
   autocmd Filetype html,xml,xsl source $VIMRUNTIME/plugin/closetag.vim
   " added
   autocmd Filetype makefile exec ":call SetTitle()" 
   " Add Ended
   autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal g`\"" |
      \ endif
endif " has("autocmd")


autocmd BufNewFile *.[ch],*.hpp,*.cpp exec ":call SetComment()" 

" 加入C注释
func SetComment()
    call setline(1,"/*<FH+>************************************************************************/")
    call append(line("."),   "/* 文件名称:".expand("%:t")."                                                          */")
    call append(line(".")+1, "/* 内容摘要:                                                                  */")
    call append(line(".")+2, "/* 作    者: liu hui                                                          */")
    call append(line(".")+3, "/* 完成日期:".strftime("%Y年%m月%d日")."                                                    */")
    call append(line(".")+4, "/* 其它说明:                                                                  */") 
    call append(line(".")+5, "/*    修改日期          版本号        修改人        修改内容                  */") 
    call append(line(".")+6, "/* -------------------------------------------------------------------------- */")
    call append(line(".")+7, "/*<FH->************************************************************************/")
    call append(line(".")+8, "")
endfunc
 
" 定义函数SetTitle，自动插入文件头 
func SetTitle()
    call setline(1,"/*<FH+>************************************************************************/")
    call append(line("."),   "/* 文件名称:".expand("%:t")."                                               */")
    call append(line(".")+1, "/* 内容摘要:                                                                 */")
    call append(line(".")+2, "/* 作    者: liu hui                                                          */")
    call append(line(".")+3, "/* 完成日期:".strftime("%Y年%m月%d日")."                                 */")
    call append(line(".")+4, "/* 其它说明:                                                                 */") 
    call append(line(".")+5, "/*    修改日期          版本号        修改人        修改内容                  */")
    call append(line(".")+6, "/* -------------------------------------------------------------------------- */")
    call append(line(".")+7, "/*<FH->************************************************************************/") 
    call append(line(".")+8, "") 
    call append(line(".")+9, "#ifndef _".toupper(expand("%:t:r"))."_H") 
    call append(line(".")+10, "#define ".toupper(expand("%:t:r"))."_H") 
    call append(line(".")+11, "#ifdef __cplusplus") 
    call append(line(".")+12, "extern \"C\"") 
    call append(line(".")+13, "{") 
    call append(line(".")+14, "#endif") 
    call append(line(".")+15, "/******************************************************************************/")
    call append(line(".")+16, "/*               #include（依次为标准库头文件、非标准库头文件）                 */")
    call append(line(".")+17, "/******************************************************************************/")
    call append(line(".")+18, "")
    call append(line(".")+19, "#ifdef __cplusplus") 
    call append(line(".")+20, "}") 
    call append(line(".")+21, "#endif") 
    call append(line(".")+22, "#endif /* endif ".toupper(expand("%:t:r"))."_H */") 
endfunc

"######################################################
"#                   PlugIn Management                #
"######################################################
"
"####################Set NeoComplCache Setting#################
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplcache#smart_close_popup() : "\<Space>"

" Shell like behavior(not recommended).
"set completeopt+=longest
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_disable_auto_complete = 0
function! CleverTab()
    let col=col('.')-1
    if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
        echo strpart( getline('.'), 0, col('.')-1 ) 
    "if col || getline('.')[col-1]!~'\k'
        return "\<Tab>"
    else
        return "\<C-x>\<C-u>"
    endif
endfunction
"inoremap <silent> <Tab> <C-R>=CleverTab()<CR>
"inoremap <expr><Tab>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
" Enable omni completion.
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.python = '[^. *\t]\.\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.python3 = '[^. *\t]\.\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'
"####################Set TagList Setting#################
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
"let Tlist_Auto_Open=1
"let Tlist_File_Fold_Auto_Close=1
let Tlist_Show_Menu=1
let Tlist_Use_Right_Window=1
nmap <F4> :Tlist<CR>
"####################Set NERDTree Setting#################
" 常规模式下输入 F5 调用插件
nmap <F5> :NERDTreeToggle<CR>
"当打开vim且没有文件时自动打开NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
"当打开的文件只剩NERDTree时关闭它
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
"####################Set ctrlP Setting#################
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'wra'
let g:ctrlp_root_markers = ['.git','.gitignore','.svn','.pro','CMakeList.txt','tags','cscope.out']
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|o)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
"####################Set pydiction Setting#################
let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'

"####################Set ctags Setting#################
"ctags Setting
set tags=tags;
"set tags+=~/.vim/sytanx/cpp.tags
function UpdateCtags()
    let curdir=getcwd()
    execute "echo curdir"
    while !filereadable("./tags")
        cd ..
        if getcwd() == "/"
            break
        endif
    endwhile
    if filewritable("./tags")
        "silent !ctags -R --c++-types=+px --excmd=pattern --exclude=Makefile --exclude=.
        "The effect is not good when silent Execute the operate ctags -R
        "!ctags -R --excmd=pattern --exclude=Makefile --exclude=.
        "!ctags -R --fields=+lS --excmd=pattern --exclude=Makefile --exclude=.
        !ctags -R --c++-kinds=+px --fields=+ilaS --extra=+q --excmd=pattern --exclude=Makefile --exclude=.
    endif
    "Should return to the formal dir
    execute ":cd " . curdir
endfunction

"Mapping UpdateCtags to F9

"First <CR> to call the function; 
"Second <CR> to return to VIM; 
"Third <CR> to return from the Info panel to the Input Area
"nmap <F9> :call UpdateCtags()<CR><CR>:echo "Ctags Updated"<CR>


"####################Set cscope Setting#################
function FindCsTag()
    let curdir=getcwd()
    execute "echo $curdir"
    if(executable('cscope') && has("cscope") )
        while !filereadable("./cscope.out")
            cd ..
            if getcwd() == "/"
                echo "Not Find Cscope.out"
                break
            endif
        endwhile
        "Add cscope.out
        if filewritable("./cscope.out")
            echo "get cscope.out"
            execute "cs add cscope.out"
        endif
    endif
    "Should return to the formal dir
    execute ":cd " . curdir
endfunction

"When Load .vimrc, call Func:FindCsTag() automaticly
:call FindCsTag()

function UpdateCsTag()
    let curdir=getcwd()
    execute "echo $curdir"
    if(executable('cscope') && has("cscope") )
        while !filereadable("./cscope.out")
            cd ..
            if getcwd() == "/"
                break
            endif
        endwhile
        "Add cscope.out
        if filewritable("./cscope.out")
            "Disconnect to cscope.out
            execute "cs kill -1"
            "silent! execute "!cscope -R -b -q -u" "qyz
            silent! execute "!find -name "*.py" -o -name "*.[ch]" -o -name "*.[ch]pp" > cscope.files"
            if filereadable("./cscope.in.out")
                silent! execute "!cscope -R -b -q -u" 
            else
                silent! execute "!cscope -R -b -u"
            endif
            silent! execute "!rm cscope.files"
            "Connect to cscope.out
            execute "cs add cscope.out"
        endif
    endif
    "Should return to the formal dir
    execute ":cd " . curdir
endfunction

"silent! execute "!find . -name '*.h' -o -name '*.c' -o -name '*.cpp' -o -name '*.java' -o -name '*.cs' > cscope.files"
"silent! execute "!cscope -b -q"
"execute "cs add cscope.out"

nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>:copen<CR>
"nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>:copen<CR>
nmap <C-@>i :cs find i <C-R>=expand("<cfile>")<CR><CR>:copen<CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>:copen<CR>
 
if has("cscope")
    set cscopequickfix=s-,c-,d-,i-,t-,e-
    set csto=0
    set cst
    set csverb
endif

"First <CR> to call the function; 
"Second <CR> to return to VIM; 
"Third <CR> to return from the Info panel to the Input Area
nmap <F9> :call UpdateCtags()<CR><CR>:call UpdateCsTag()<CR><CR>:echo "Tags Updated"<CR>
