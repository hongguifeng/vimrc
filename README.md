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
安装 gtags
=
```
wget https://ftp.gnu.org/pub/gnu/global/global-6.6.3.tar.gz
tar -xzvf global-6.6.3.tar.gz
./configure
make  
sudo make install
``` 
下载vimrc
=
```
git clone git@github.com:hongguifeng/vimrc.git ~/vimrc
ln -s ~/vimrc/vimrc ~/.vimrc
mkdir ~/.vim
```
安装 fzf
=
```
git clone git@github.com:junegunn/fzf.git ~/.fzf
~/.fzf/install
```
安装 vim-plug
=
```
打开vim，自动安装vim-plug, 输入 :PlugInstall 来安装其他插件
```
安装 youcompleteme 
=
```
sudo apt install build-essential cmake python3-dev
cd ~/.vim/plugged/YouCompleteMe
python3 install.py --clang-completer
```
安装中文help
=
```
tar -xzvf vimcdoc-2.1.0.tar.gz
./vimcdoc.sh -i
```
