#!/bin/bash

# 不管存在不，先删除再说.
rm -f ~/.vimrc
curl -f https://raw.githubusercontent.com/jt9ge/sg-vim-plus/main/default.vimrc -o ~/.vimrc

echo "更漂亮了!"