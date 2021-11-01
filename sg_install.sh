#!/bin/bash

# 初始化目录和空文件
mkdir -p ~/.vim/autoload
mkdir -p ~/.vim/plugged
touch ~/.vimrc

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
if [ ! -d "${HOME}/.vim/plugged/molokai/colors" ]; then
    git clone https://github.com/tomasr/molokai.git --depth=1 ~/.vim/plugged/molokai
fi

# 不管存在不，先删除再说.
rm -f ~/.vimrc
curl https://raw.githubusercontent.com/jt9ge/sg-vim-plus/main/default.vimrc -o ~/.vimrc

echo "你好漂亮!"