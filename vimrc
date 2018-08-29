" vim 常用操作
"
" 复制n行：n + yy
" 剪切n行：n + dd
" 复制n个单词：y + n + w
" 剪切n个单词：d + n + w
" 粘贴：p
"
" 删除光标之后的单词剩余部分: dw
" 删除光标之后的该行剩余部分: d$
" 
" 撤销：u
" 反撤销：ctrl + r
"
" 插入新的一行：o 往后 O 往前
" 
" 到行头: 0  到行尾：$ 
" 到下一个单词开头：w 结尾：e
"
" 跳到第n行：nG
" 向下半页：ctrl + d 
" 向上半页：ctrl + u
" 到最后一行： G
" 到第一行：gg
" 
" 返回上一次的位置：Ctrl + o 
"
" % : 匹配括号移动，包括 (, {, [.
" * 和 #:  匹配光标当前所在的单词，n往下搜索，N往上搜索
" 取消搜索高亮：：noh
"
" 水平分割打开新文件：：split + 文件
" 在新tab页面打开文件：：tabnew + 文件
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

colorscheme desert 

" tag命令用法：
" Ctrl＋］  跳到当前光标下单词的标签
" Ctrl＋O  返回上一个标签
set tags=tags
set tags+=./tags "add current directory's generated tags file


" ----------------------------------------------
" Bundle 插件管理配置
" 使用 :BundleInstall 更新
" ----------------------------------------------
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!

" 管理插件的插件
Bundle 'gmarik/vundle'

" 打开文件历史文件列表，be 打开列表 bv水平 bs垂直
Bundle 'bufexplorer.zip'

" 文件树
Bundle 'scrooloose/nerdtree'

" tag list
Bundle 'taglist.vim'

" 加强搜索
Bundle 'Yggdroot/LeaderF'

" 漂亮的状态栏
Bundle 'vim-airline/vim-airline'

" 模糊搜索神器
Bundle 'junegunn/fzf'

filetype plugin indent on     " required!


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









