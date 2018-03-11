
set ignorecase	" 搜索模式里忽略大小写
set smartcase	" 如果搜索模式里包含大写字符，不使用 ignorecase 选项

set autoindent	" 设置自动缩进
set smartindent " 设置智能对其方式

set tabstop=4	" 设置tab键宽度
set softtabstop=4	" 设置软tab宽度
set shiftwidth=4	" 缩进使用4个空格

set cindent	" 使用c的自动缩进方式
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s "设置C/C++语言的具体缩进方式
set showmatch " 设置匹配模式，显示匹配的括号
set linebreak " 整词换行
set whichwrap=b,s,<,>,[,] " 光标从行首和行末时可以跳到另一行去
set mouse=a " Enable mouse usage (all modes) "使用鼠标
set number " Enable line number "显示行号

set laststatus=2 " 总显示最后一个窗口的状态行；
set ruler " 标尺，用于显示光标位置的行号和列号，逗号分隔。

set showcmd " 命令行显示输入的命令
set showmode " 命令行显示vim当前模式

set incsearch " 输入字符串就显示匹配点
set hlsearch

" tag命令用法：
" Ctrl＋］  跳到当前光标下单词的标签
" Ctrl＋O  返回上一个标签
set tags=tags
set tags+=./tags "add current directory's generated tags file


colorscheme desert 
