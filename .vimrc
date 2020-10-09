"let mapleader = "\<space>"
"let mapleader = " "
"nnoremap <space> <Nop>
nmap <space> <Leader>

" =============================================================================
"                          << 以下为软件默认配置 >>
" =============================================================================
set nocompatible                   "禁用 Vi 兼容模式
set ignorecase                     "搜索模式里忽略大小写
set smartcase                      "如果搜索模式包含大写字符，不使用 'ignorecase' 选项，只有在输入搜索模式并且打开 'ignorecase' 选项时才会使用
" set noincsearch                  "在输入要搜索的文字时，取消实时匹配
set hlsearch        			   "高亮搜索
set incsearch                      "在输入要搜索的文字时，实时匹配
set mouse=a                        " 在任何模式下启用鼠标

if has("syntax")
    " syntax on
    syntax enable
endif
" =============================================================================
"                          << 以下为用户自定义配置 >>
" =============================================================================
"####################Set Plug-In Management On#################
"#Should placed before 'filetype on'
call pathogen#infect()

" -----------------------------------------------------------------------------
"  < 编码配置 >
" -----------------------------------------------------------------------------
" 注：使用utf-8格式后，软件与程序源码、文件路径不能有中文，否则报错
set encoding=utf-8                                    "设置gvim内部编码，默认不更改
set fileencoding=utf-8                                "设置当前文件编码，可以更改，如：gbk（同cp936）
set fileencodings=ucs-bom,utf-8,gbk,gb18030,latin-1     "设置支持打开的文件的编码

" 文件格式，默认 ffs=dos,unix
set fileformat=unix                                   "设置新（当前）文件的<EOL>格式，可以更改，如：dos（windows系统常用）
set fileformats=unix,dos,mac                          "给出文件的<EOL>格式类型
" 双字宽显示
set ambiwidth=double
" 用于屏幕显示的编码
set termencoding=utf-8

" 查看16进制
nmap xxd :%!xxd -c 12<CR>
nmap xxr :%!xxd -r<CR>
" -----------------------------------------------------------------------------
"  < 编写文件时的配置 >
" -----------------------------------------------------------------------------
filetype on                                           "启用文件类型侦测
filetype plugin on                                    "针对不同的文件类型加载对应的插件
filetype plugin indent on                             "启用缩进
set autoindent                                        " 把当前行的对齐格式应用到下一行(自动缩进）
set cindent                                           " 别针对 C语言语法自动缩进
set smartindent                                       " 依据上面的对齐格式，智能的选择对齐方式
set gdefault                                          " 替换所有行内匹配，而不是第一个
set expandtab                                         "将Tab键转换为空格
set tabstop=4                                         "设置Tab键的宽度，可以更改，如：宽度为2
set softtabstop=4                                     "和上面一样
set shiftwidth=4                                      "换行时自动缩进宽度，可更改（宽度同tabstop）
set smarttab                                          "指定按一次backspace就删除shiftwidth宽度
set foldenable                                        "启用折叠
set foldmethod=indent                                 "indent 折叠方式
set foldlevel=9999                                    " 折叠的层次，打开文件时默认不折叠

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
if has('terminal') && exists(':terminal') == 2 && has('patch-8.1.1')
	" vim 8.1 支持 termwinkey ，不需要把 terminal 切换成 normal 模式
	" 设置 termwinkey 为 CTRL 加减号（GVIM），有些终端下是 CTRL+?
	" 后面四个键位是搭配 termwinkey 的，如果 termwinkey 更改，也要改
	set termwinkey=<c-_>
	tnoremap <c-h> <c-_>h
	tnoremap <c-l> <c-_>l
	tnoremap <c-j> <c-_>j
	tnoremap <c-k> <c-_>k
	tnoremap <m-q> <c-\><c-n>
endif
" F10打开内置终端，exit退出
noremap <silent> <F10> :belowright term ++rows=16<cr>

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
 nnoremap <S-q> :q!
 nnoremap <Leader>q :q<CR>


" 启用每行超过80列的字符提示（字体变蓝并加下划线），不启用就注释掉
au BufWinEnter * let w:m2=matchadd('Underlined', '\%>' . 80 . 'v.\+', -1)

" -----------------------------------------------------------------------------
"  < 界面配置 >
" -----------------------------------------------------------------------------
set number                                            "显示行号
set relativenumber                                    "相对行号
set laststatus=2                                      "启用状态栏信息
set cmdheight=2                                       "设置命令行的高度为2，默认为1
set cursorline                                        "突出显示当前行
" set guifont=YaHei_Consolas_Hybrid:h10                 "设置字体:字号（字体名称空格用下划线代替）
set nowrap                                            "设置不自动换行
set viminfo+=!										  " 保存全局变量
set iskeyword+=_,$,@,%,#,-							  "带有如下符号的单词不要被换行分割
set backspace=2										  "使回格键（backspace）正常处理indent, eol, start等
set whichwrap+=<,>,h,l								  "允许backspace和光标键跨越行边界
"set fillchars=vert:\ ,stl:\ ,stlnc:\				  " 在被分割的窗口间显示空白，便于阅读
set shortmess=atI                                     "去掉欢迎界面
" 我的状态行显示的内容（包括文件类型和解码）
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"if g:isGUI                                            "GVIM启动时最大化窗口
"    set lines=50 columns=999
"endif

"设置molokai配色主题
set t_Co=256                   " 在终端启用256色
"hi Normal ctermfg=252 ctermbg=none
"set background=dark
colorscheme desert
"if g:isGUI
"   colorscheme desert_terminal
"else
"   colorscheme firefly
"endif


" -----------------------------------------------------------------------------
"  < 其它配置 >
" -----------------------------------------------------------------------------
set writebackup                             "保存文件前建立备份，保存成功后删除该备份
set nobackup                                "设置无备份文件
set noswapfile                              "设置无临时文件
set history=1000                            " 历史记录数
set vb t_vb=                                "关闭提示音
set showmatch                               " 高亮显示匹配的括号
set matchtime=5                             " 匹配括号高亮的时间（单位是十分之一秒）
set scrolloff=5                             " 光标移动到buffer的顶部和底部时保持5行距离
set wildmenu
set wildmode=longest:list,full              "命令模式Tab补全命令和文件名
set autochdir                               "将工作目录自动切换到当前正在编辑文件的目录


" 自动切换目录为当前编辑文件所在目录
au BufRead,BufNewFile,BufEnter * cd %:p:h


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
inoremap <expr><Space> pumvisible() ? neocomplcache#smart_close_popup() : "\<Space>"

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
"####################Set python auto complete#################
"禁止预览窗口
set completeopt-=preview
"设置为0禁止.触发补全
let g:jedi#popup_on_dot=1
"自定义快捷键
let g:jedi#completions_command="<C-N>"
let g:jedi#goto_command="<Leader>jd"
let g:jedi#goto_assignments_command=""
let g:jedi#goto_stubs_command="<Leader>js"
let g:jedi#usages_command="<Leader>ju"
let g:jedi#goto_definitions=""
let g:jedi#documentation_command="K"
let g:jedi#rename_command="<Leader>jr"
"###################Set syntastic Setting################
"设置error和warning的标志
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='►'
let g:syntastic_enable_highlighting=1
"设置状态栏
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"设置lint命令
let g:syntastic_cpp_checkers = ['gcc']
let g:syntastic_cpp_compiler = 'gcc'
let g:syntastic_cpp_compiler_options = '-std=c++11'
let g:syntastic_python_checkers = ['flake8']
"关闭实时检查，只在打开文件和保存时运行检查
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
"在列表窗口查看错误
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_loc_list_height = 5
function! ToggleErrors()
    let old_last_winnr = winnr('$')
    lclose
    if old_last_winnr == winnr('$')
        " Nothing was closed, open syntastic error location panel
        Errors
    endif
endfunction
nnoremap <Leader>sl :call ToggleErrors()<cr>
nnoremap <Leader>sn :lnext<cr>
nnoremap <Leader>sp :lprevious<cr>
"不显示代码风格检查
let g:syntastic_quiet_messages = { "type": "style" }
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
"#################Set RainbowParentheses Setting########## 
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"####################Set ctags Setting#################
"ctags Setting
set tags=tags;
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
        !ctags -R --c-kinds=+px --c++-kinds=+px --fields=+nilazS --extras=+q --excmd=pattern --exclude=Makefile --exclude=.
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

nmap <Leader>fu :cs find s <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <Leader>fd :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>fc :cs find c <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <Leader>fs :cs find t <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>:copen<CR>
"nmap <Leader>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>:copen<CR>
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
