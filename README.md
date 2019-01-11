安装vim
=
```
sudo apt-get install vim vim-scripts vim-doc
```
安装 ctags
=
```
sudo apt-get install autogen
git clone git@github.com:universal-ctags/ctags.git
./autogen.sh
./configure
make
sudo make install # may require extra privileges depending on where to install
```
下载vimrc
=
```
git clone git@github.com:hongguifeng/vimrc.git ~/vimrc
//创建符号链接 
ln -s ~/vimrc/vimrc ~/.vimrc
//创建目录 
mkdir ~/.vim
```
安装 fzf
=
```
git clone git@github.com:junegunn/fzf.git ~/.fzf
//执行命令
~/.fzf/install
```
安装 vim-plug
=

* 打开vim，自动安装vim-plug, 输入 :PlugInstall 来安装其他插件

安装中文help
=
```
//解压
tar -xzvf vimcdoc-2.1.0.tar.gz
//进入目录执行 
./vimcdoc.sh -i
```
