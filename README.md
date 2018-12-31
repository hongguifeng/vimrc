# vimrc
1. sudo apt-get install vim vim-scripts vim-doc
1. sudo apt-get install ctags
1. sudo apt-get install cscope

1. git clone git@github.com:hongguifeng/vimrc.git ~/vimrc

1. 创建符号链接 ln -s ~/vimrc/vimrc ~/.vimrc

1. 创建目录 mkdir ~/.vim

1. 安装 fzf:  git clone --depth - git@github.com:gunegunn/fzf.git ~/.fzf

1. 执行命令：~/.fzf/install

1. 安装Vundle git clone git@github.com:gmarik/vundle.git ~/.vim/bundle/vundle

1. 打开vim，输入 :BundleInstall 来安装其他插件

# 安装中文help
1. 解压： tar -xzvf vimcdoc-2.1.0.tar.gz
1. 进入目录执行 ./vimcdoc.sh -i
