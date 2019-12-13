" ---------------------------------------------------------------------
" vim 常用操作
" ---------------------------------------------------------------------
"--------------------------> 增删改查 <--------------------------------
"----------------------------------------------------------------------
" 复制n行：n + yy   复制n个单词：y + n + w
" 剪切n行：n + dd   剪切n个单词：d + n + w
" 粘贴：p
" 复制系统剪贴板："+y
" 粘贴系统剪贴板："+p
"
" 命令模式:下可以使用 Ctrl + r + Ctrl + w 来输入光标所在的单词
"
" 替换：:%s/old/new/gc  %表示全局,可替换为n,m表示n到m行，g表示整行，c表示询问是否替换
"
" 删除光标之后的单词剩余部分: dw 删除光标所在单词：diw
" 删除光标之后的该行剩余部分: d$
" 删除冒号(括号)之间的所有字符：di + " (di + ))
" 删除光标到某个字母之间的所有字符：dt + 字符 (df + 字符)
" 插入模式下删除单词：Ctrl + w
"
" 撤销：u
" 反撤销：ctrl + r
"
" 跳到行首/尾并进入插入模式：I/A
" 插入新的一行：o 往后 O 往前
"
" 批量注释：Ctrl + v 进入块选择，选中指定行；输入大写 I 进入插入模式，
" 输入//，按两下 Esc
"
"----------------------------------------------------------------------
"--------------------------> 移动光标 <--------------------------------
"----------------------------------------------------------------------
" 跳到第n行：nG
" 向下半页：ctrl + d 
" 向上半页：ctrl + u
" 到最后一行： G
" 到第一行：gg
" 到最后编辑位置：g;
"
" 光标移动到屏幕顶部：H 中间：M 底部：L
" 光标不变,下拉屏幕：Ctrl + e 上拉：Ctrl + y
" 光标所在行移动到屏幕顶部：zt 中间：zz 底部：zb
"
" 返回上一次的位置：Ctrl + o 
" 前进到下一个位置: Ctrl + i
" :jumps 查看跳转表，n + Ctrl + o/i 跳转到第n个位置
"
" 到行头: 0  到行尾：$
" 到下一个单词开头：w 结尾：e
" f + 字符：跳到光标后第一个指定字符出现的位置,之后按；继续往下跳
" % : 匹配括号移动，包括 (, {, [.
"
" * 和 #:  匹配光标当前所在的单词，n往下搜索，N往上搜索
" 取消搜索高亮：：noh
"
" 到当前函数的{ 处：[[
" 到当前函数的} 处：][
" 到上一个函数的 { 处：[]
" 到下一个函数的 } 处：]]
"
" 单文件标记小写"x"：mx
" 全局标记大写"X"：mX
" 跳转到标记"x"处：'x
"
"----------------------------------------------------------------------
"--------------------------> tab 页面 <--------------------------------
"----------------------------------------------------------------------
"
" 打开新文件： :e + 文件
" 查看打开的文件： :ls
" 切换打开的文件： :b num
" 水平分割打开新文件：：sp + 文件
" 在新tab页面打开文件：：tabnew + 文件
" :He 在下面分屏浏览目录
" :Te tab页面形式目录浏览，gt下一个tab，gT上一个tab
"
" --------------------------------------------------------------------

"----------------------------------------------------------------------
"--------------------------> shell 常用操作 <--------------------------
"----------------------------------------------------------------------
" ctrl + c 中断该行，另起一行
" ctrl + u 清空输入
" ctrl + a 移动到行头
" ctrl + shift + up / down 上下滚动屏幕
"
" vim 内的shell要滚动需要按 Ctrl+W N 使得终端进入vim的normal模式

" --------------------------------------------------------------------
" vim 设置
" --------------------------------------------------------------------
set autoindent	" 设置自动缩进
set smartindent " 设置智能对其方式

set tabstop=4	" 设置tab键宽度
set softtabstop=4	" 设置软tab宽度
set shiftwidth=4	" 缩进使用4个空格
" set expandtab    " 将Tab键转换为空格
set list			" 显示tab
set listchars=tab:>\ ,trail:- " 设置tab和行尾空格符号

set cindent	" 使用c的自动缩进方式
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s "设置C/C++语言的具体缩进方式
set showmatch " 设置匹配模式，显示匹配的括号
set linebreak " 整词换行
set mouse=r " Enable mouse usage (all modes) "使用鼠标
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

" <leader> 键默认为 \
" 使用无道查找单词: \wd
noremap <silent> <leader>wd :!wd <C-R><C-W><cr>
" 分屏打开本文件: \rc
noremap <silent> <leader>rc :sp ~/.vimrc <cr>
" 分屏建立新shell
noremap <silent> <leader>n :ter <cr>
" 上下翻页
" noremap <silent> <C-j> <C-d>
" noremap <silent> <C-k> <C-u>

" tag命令用法：
" Ctrl＋］  跳到当前光标下单词的标签
" Ctrl＋O  返回上一个标签
" :tselect 列出tag列表
" 设置中./.tags 表示当前目录，分号；表示查找不到向上递归，，.tags表示pwd的当前目录
set tags=./.tags;,.tags
" -----------------------------------------------------------------------------

" 自动退出 quickfix 窗口
autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif

" -----------------------------------------------------------------------------
" 插件管理工具 vim-plug
" -----------------------------------------------------------------------------
" :PlugUpdate 更新插件
" :PlugInstall 安装插件
" :PlugClean 清除插件

" 自动下载 vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"------------------------------------------------------------------------------
" 插件开头，（括号中为插件下载位置），插件放下面
call plug#begin('~/.vim/plugged')

" 一些快捷键
" quickfix 下一项(:cn): ] + q 
" quickfix 上一项(:cp): [ + q
Plug 'tpope/vim-unimpaired'

" 自动生成和管理 ctags 和 gtags
Plug 'ludovicchabant/vim-gutentags'

" 自动加载 gtags
" 查找当前光标引用：<leader> + cs 
" 查找当前光标字符：<leader> + ct
" 查找当前光标定义：<leader> + cd
" quickfix 窗口调到下一项： :cn
" quickfix 窗口调到上一项： :cp
Plug 'skywind3000/gutentags_plus'

" 模糊搜索神器,:FZF 进行搜索, Ctrl+j k 上下移动, Ctrl+x 水平分割打开
" :Buff 在打开的buffer文件中切换
" 在命令行下，Ctrl+t 将选中的地址直接粘贴在命令行, Ctrl + r 搜索历史命令
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" 自动补全插件
Plug 'Valloric/YouCompleteMe'

" 代码检查插件
" Plug 'neomake/neomake'
" Plug 'w0rp/ale'

" Taglist 列出当前文件中的所有宏,全局变量, 函数名等
Plug 'hongguifeng/vim-taglist'

" 漂亮的状态栏
Plug 'vim-airline/vim-airline'

" 代码高亮
Plug 'octol/vim-cpp-enhanced-highlight'

" git 状态提醒
" 显示左右对比 :SignifyDiff
Plug 'mhinz/vim-signify'

" 快速对齐插件
Plug 'junegunn/vim-easy-align'

" 插入自定义片段
Plug 'SirVer/ultisnips' 

" 文件树
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" 下划线高亮
Plug 'itchyny/vim-cursorword'

" markdown
" 开启预览：MarkdownPreview
" 停止预览：MarkdownPreviewStop
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'

" 改变 ctrl+o 和 ctrl+i 跳转逻辑，更符合正常跳转逻辑
Plug 'epheien/myjl'

" 上下翻页时顺滑滚动
Plug 'psliwka/vim-smoothie'

" 插件结尾，插件放上面
call plug#end()
"------------------------------------------------------------------------------


" -----------------------------------------------------------------------------
" ctags 自动更新 vim-gutentags 配置
" -----------------------------------------------------------------------------
" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

" 暂时屏蔽 ctags，gtags好像已经够用
" let g:gutentags_modules = []
" if executable('ctags')
" 	let g:gutentags_modules += ['ctags']
" endif

" 开启 gtags 支持
if executable('gtags-cscope') && executable('gtags')
	let g:gutentags_modules = ['gtags_cscope']
endif

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags

" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" 如果使用 universal ctags 需要增加下面一行
" let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']

" 禁用 gutentags 自动加载 gtags 数据库的行为
let g:gutentags_auto_add_gtags_cscope = 0

" 检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

" 自动跳转到 quickfix 窗口.
let g:gutentags_plus_switch = 1
" 调试命令 使用 :GutentagsToggleTrace 开启调试，:message 显示详细信息
let g:gutentags_define_advanced_commands = 1
" -----------------------------------------------------------------------------


" -----------------------------------------------------------------------------
" gutentags_plus
" -----------------------------------------------------------------------------
" 关闭默认键盘映射
let g:gutentags_plus_nomap = 1

" 自定义键盘映射
" 查找光标位置的引用 \cs
noremap <silent> <leader>cs :GscopeFind s <C-R><C-W><cr>
" 查找光标位置的函数定义 \cd
noremap <silent> <leader>cd :GscopeFind g <C-R><C-W><cr>
" 查找光标位置的字符串 \ct
noremap <silent> <leader>ct :GscopeFind t <C-R><C-W><cr>
" 自定义查找定义 \cf
noremap <leader>cf :GscopeFind g 

" -----------------------------------------------------------------------------


" -----------------------------------------------------------------------------
" taglist.vim
" -----------------------------------------------------------------------------
" 列出当前文件中的所有宏,全局变量, 函数名等
" 使用:Tlist打开和关闭list
noremap <silent> <leader>w :Tlist<cr>

let Tlist_Auto_Open=1                       " 自动打开taglist窗口
let Tlist_Ctags_Cmd='ctags'                 " 因为我们放在环境变量里，所以可以直接执行
let Tlist_Show_One_File=1                   " 只显示当前文件的tags
let Tlist_Exit_OnlyWindow=1                 " 如果Taglist窗口是最后一个窗口则退出Vim
let Tlist_File_Fold_Auto_Close=1            " 自动折叠
let Tlist_WinWidth=30                       " 设置窗口宽度
let Tlist_Process_File_Always=1             " 实时更新tags
let Tlist_Use_Right_Window=0                " 在左侧窗口中显示
let Tlist_Enable_Fold_Column = 0            " 不显示最左边的折叠指示
let Tlist_Compact_Format = 1                " 紧凑显示去空行

"加快vim光标移动时taglist光标更新速度
set updatetime=1000
" -----------------------------------------------------------------------------

" -----------------------------------------------------------------------------
"  fzf 配置
" -----------------------------------------------------------------------------
" 键盘映射
noremap <silent> <leader>t :FZF<cr>
noremap <silent> <leader>b :Buff<cr>
" 颜色配置
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
" -----------------------------------------------------------------------------

" -----------------------------------------------------------------------------
"  YouCompleteMe 代码补全配置
" -----------------------------------------------------------------------------
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
" let g:ycm_key_invoke_completion = '<c-z>'
set completeopt=menu,menuone

" noremap <c-z> <NOP>

let g:ycm_semantic_triggers =  {
           \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
           \ 'cs,lua,javascript': ['re!\w{2}'],
           \ }
" -----------------------------------------------------------------------------

" -----------------------------------------------------------------------------
" vim-smoothie 插件配置
" -----------------------------------------------------------------------------
"向下翻半页
nnoremap <silent> <C-j> :<C-U>call smoothie#downwards() <CR>
"向上翻半页
nnoremap <silent> <C-k> :<C-U>call smoothie#upwards()  <CR>
" -----------------------------------------------------------------------------
"
