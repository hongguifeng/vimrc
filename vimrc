" vim 常用操作
"
" 复制n行：n + yy
" 剪切n行：n + dd
" 复制n个单词：y + n + w
" 剪切n个单词：d + n + w
" 粘贴：p
"
" 替换：:%s/old/new/gc  %表示全局,可替换为n,m表示n到m行，g表示整行，c表示询问是否替换
"
" 删除光标之后的单词剩余部分: dw
" 删除光标之后的该行剩余部分: d$
" 删除冒号(括号)之间的所有字符：di + " (di + ))
" 删除光标到某个字母之间的所有字符：dt + 字符 (df + 字符)
"
" 撤销：u
" 反撤销：ctrl + r
"
" 插入新的一行：o 往后 O 往前
" 
" 跳到第n行：nG
" 向下半页：ctrl + d 
" 向上半页：ctrl + u
" 到最后一行： G
" 到第一行：gg
" 
" 返回上一次的位置：Ctrl + o 
"
" 到行头: 0  到行尾：$
" 到下一个单词开头：w 结尾：e
" f + 字符：跳到光标后第一个指定字符出现的位置,之后按；继续往下跳
" % : 匹配括号移动，包括 (, {, [.
"
" * 和 #:  匹配光标当前所在的单词，n往下搜索，N往上搜索
" 取消搜索高亮：：noh
"
" 打开新文件： :e + 文件
" 查看打开的文件： :ls
" 切换打开的文件： :b num
" 水平分割打开新文件：：sp + 文件
" 在新tab页面打开文件：：tabnew + 文件
" :He 在下面分屏浏览目录
" :Te tab页面形式目录浏览，gt下一个tab，gT上一个tab
"
" 批量注释：Ctrl + v 进入块选择，选中指定行；输入大写 I 进入插入模式，
" 输入//，按两下 Esc
"

set autoindent	" 设置自动缩进
set smartindent " 设置智能对其方式

set tabstop=4	" 设置tab键宽度
set softtabstop=4	" 设置软tab宽度
set shiftwidth=4	" 缩进使用4个空格
set expandtab    " 将Tab键转换为空格

set cindent	" 使用c的自动缩进方式
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s "设置C/C++语言的具体缩进方式
set showmatch " 设置匹配模式，显示匹配的括号
set linebreak " 整词换行
set mouse=a " Enable mouse usage (all modes) "使用鼠标
set number " Enable line number "显示行号

set laststatus=2 " 总显示最后一个窗口的状态行；
set ruler " 标尺，用于显示光标位置的行号和列号，逗号分隔。

set showcmd " 命令行显示输入的命令
set showmode " 命令行显示vim当前模式

set incsearch " 输入字符串就显示匹配点
set hlsearch  " 高亮搜索
set ignorecase	" 搜索模式里忽略大小写
set smartcase	" 如果搜索模式里包含大写字符，不使用 ignorecase 选项

" vim 中打开文件时，先根据 fileencodings 探测文件的编码方式，
" 然后把读到的文件转换成 encoding 编码保存在文件缓冲区中，
" 再转换成 termencoding 指定的编码方式将字符写入终端。
" 中文乱码主要是由于 fileencoding 探测不准确，
" 或者编码转换时无法正常转换，如GBK转为ASCII就会导致中文乱码。
set fileencodings=utf-8,gbk,latin1
set encoding=utf-8
set termencoding=utf-8

colorscheme desert 

" tag命令用法：
" ctags -R * 建立索引文件
" Ctrl＋］  跳到当前光标下单词的标签
" Ctrl＋O  返回上一个标签
" :tselect 列出tag列表
" 设置中./.tags 表示当前目录，分号；表示查找不到向上递归，，.tags表示pwd的当前目录
set tags=./.tags;,.tags


" -----------------------------------------------------------------------------
" 插件管理工具 vim-plug
" -----------------------------------------------------------------------------
" 自动下载 vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" 插件开头，（括号中为插件下载位置），插件放下面
call plug#begin('~/.vim/plugged')

" 模糊搜索神器,:FZF 进行搜索, Ctrl+j k 上下移动, Ctrl+x 水平分割打开
" :Buff 在打开的buffer文件中切换
" 在命令行下，Ctrl+t 将选中的地址直接粘贴在命令行, Ctrl + r 搜索历史命令
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Taglist 列出当前文件中的所有宏,全局变量, 函数名等
Plug 'vim-scripts/taglist.vim'

" 漂亮的状态栏
Plug 'vim-airline/vim-airline'

" 快速对齐插件
Plug 'junegunn/vim-easy-align'

" 插入自定义片段
Plug 'SirVer/ultisnips' 

" 文件树
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" 插件结尾，插件放上面
call plug#end()




" ----------------------------------------------
" taglist.vim
" ----------------------------------------------
" 列出当前文件中的所有宏,全局变量, 函数名等
" 使用:Tlist打开和关闭list

let Tlist_Auto_Open=1						" 自动打开taglist窗口
let Tlist_Ctags_Cmd='ctags' 				" 因为我们放在环境变量里，所以可以直接执行
let Tlist_Show_One_File=1                   " 只显示当前文件的tags
let Tlist_Exit_OnlyWindow=1                 " 如果Taglist窗口是最后一个窗口则退出Vim
let Tlist_File_Fold_Auto_Close=1            " 自动折叠
let Tlist_WinWidth=30                       " 设置窗口宽度
let Tlist_Process_File_Always=1 			" 实时更新tags
let Tlist_Use_Right_Window=0                " 在左侧窗口中显示

" ----------------------------------------------
"  fzf 颜色
" ----------------------------------------------
let g:fzf_colors =
    \ { 'fg':      ['fg', 'Comment'],
    \ 'bg':      ['bg', 'Normal'],
    \ 'hl':      ['fg', 'Comment'],
    \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
    \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
    \ 'hl+':     ['fg', 'Statement'],
    \ 'info':    ['fg', 'PreProc'],
    \ 'border':  ['fg', 'Ignore'],
    \ 'prompt':  ['fg', 'Conditional'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment'] }









