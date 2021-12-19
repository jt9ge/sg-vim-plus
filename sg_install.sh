#!/bin/bash

# 初始化目录和空文件
mkdir -p ~/.vim/autoload
mkdir -p ~/.vim/plugged
touch ~/.vimrc

if [ "$EDITOR" = "" ]
then
    STR_ZSH_SHELL=`echo $SHELL|grep zsh`
    STR_FISH_SHELL=`echo $SHELL|grep fish`
    STR_BASH_SHELL=`echo $SHELL|grep bash`
    if [ "$STR_ZSH_SHELL" != "" ]
    then
        echo "export EDITOR=`which vim`" >> "${HOME}/.zshrc"
    elif [ "$STR_FISH_SHELL" != "" ]
    then
        echo "export EDITOR=`which vim`" >> ${HOME}/.fishrc
    elif [ "$STR_BASH_SHELL" != "" ]
        echo "export EDITOR=`which vim`" >> ${HOME}/.bashrc
    then
    else
        echo "export EDITOR=`which vim`" >> ${HOME}/.bashrc
    fi
else
    echo "found editor env"
fi

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
if [ ! -d "${HOME}/.vim/plugged/molokai/colors" ]; then
    git clone https://github.com/tomasr/molokai.git --depth=1 ~/.vim/plugged/molokai
fi

# 不管存在不，先删除再说.
rm -f ~/.vimrc
curl https://raw.githubusercontent.com/jt9ge/sg-vim-plus/main/default.vimrc -o ~/.vimrc

echo "你好漂亮!"