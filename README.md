# 简单好用快捷的vim配置方案
> 不是最好，但求做更好的vim精巧配置方案.

## 自动安装(推荐)
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/jt9ge/sg-vim-plus/main/sg_install.sh)"
```

## 手动安装
```bash
# 给执行权限
chmod +x ./sg_install.sh
# 安装执行
./sg_install.sh
```

## 更新.vimrc
```bash
# 给执行权限
chmod +x ./sg_update.sh
# 安装执行
./sg_update.sh
```



## FAQ
1. 粘贴出现缩紧扩展问题
>  ## 在插入模式下按 ` <F5> `进入粘贴模式,这时候粘贴复制过来的代码不会触发自动缩进 ##
