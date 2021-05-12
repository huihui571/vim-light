# vim-light

## 简介
轻量vim编辑器，插件尽可能精简，支持c/cpp/python。
分为两个版本，一个是simple版本没有任何插件，只满足基本编辑需要；另一个是有插件版本，所有插件选用稳定的版本，尽量减少依赖，以便于在比较老的机器和没有sudo权限的服务器上使用。

## 插件/功能
- A.vim：					         c/cpp切换头文件和源文件
- ctrlp：                               模糊搜索
- echofunc：                      显示函数签名
- jedi-vim：                         python语法补全
- lightline：                         状态栏增强
- neocomplcache：           vim补全整合
- nerdtree：                       目录树
- rainbow_parentheses：彩虹括号
- snipmate：                      代码片段
- syntastic：                       语法检查
- taglist：                            符号列表
- minibufexpl：                buffer浏览
- vim-terminal-help:            vim内置终端助手
- ctrlsf:                               全局文本搜索

## 使用方法

```shell
cd ~
git clone https://github.com/huihui571/vim-light.git .vim-light
```
无插件版本:

```shell
ln -s ~/.vim-light/.vimrc_simple ~/.vimrc
```

插件版本：

```shell
ln -s ~/.vim-light/.vim ~/.vim
ln -s ~/.vim-light/.vimrc ~/.vimrc
```

## 高级功能

这一份配置同样提供了ctags/cscope的支持，使用之前需要先安装ctags(Universal Ctags)和cscope命令。

#### 使用方法

将~/.vim-light/ctags.sh 脚本拷贝到项目根目录，运行

```shell
bash ctags.sh -a
```

即可为项目建立tags和cscope数据库。
