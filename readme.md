#
iTerm 配色 + Oh My Zsh 主题 推荐下面这个 基于ys魔改的 
https://github.com/oskarkrawczyk/honukai-iterm-zsh  


```
→ brew list | grep zsh
zsh-autosuggestions
zsh-completions
zsh-history-substring-search
zsh-syntax-highlighting


#source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
```


/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

https://gitbook.cn/books/5cbf3522c921292c2f62a94d/index.html

关于触摸板，这里推荐开启轻按点击功能，这样只要轻轻的触碰触摸板，不用真的按下去，就可以点击了，这里直接输入命令即可：
defaults write com.apple.AppleMultitouchTrackpad Clicking -int 1

defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1


首先是字母级的一些操作：

Ctrl + F：向右（Forward）移动一个字母，等价于方向键 →
Ctrl + B：向左（Backward）移动一个字母，等价于方向键 ←
Ctrl + D：向右删除一个字母，等价于 → + Delete 这个快捷键也很常用
Ctrl + H：向左删除一个字母，等价于 Delete
行级操作：

Ctrl + A：移动到行首
Ctrl + E：移动到行尾
Ctrl + K：删除到行尾
Ctrl + U：删除到行头
Ctrl + N：移动到下一行
Ctrl + P：移动到上一行
单词级操作(常用)：

Option + ←：光标向左移动一个单词
Option + →：光标向右移动一个单词
Option + Delete：删除一个单词


brew cask install iterm2

iTerm2 经常是和 oh-my-zsh 搭配来使用的，所以下一步来安装 oh-my-zsh这个插件，命名如下：

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

安装完成之后，我们就可以编辑 oh-my-zsh 的配置文件 ~/.zshrc 进行自己的相关配置了，比如可以修改主题色等等相关操作，很多人都喜欢炫酷的主题，大家可以到这里选取自己喜欢的主题,然后到配置文件 ~/.zshrc 进行相应修改即可。基本安装之后，接下来介绍 iTerm2 的一些快捷操作

Tab 和 Pane
按下 Command + T 可以新建一个 Tab，每个标签页的后面都会标记一个序号，通过 Command + 序号 就可以在多个页面之间切换了，或者用 Command + [ 和 Command + ] 来切换到左侧或者右侧的标签页。

同一个 Tab 内，还可以切分出多个 Pane，有两种切分方式：

Command + D：水平切分，切分出一左一右两个 Pane Command + Shift + D：垂直切分，切分出一上一下两个 Pane 通过 Command + Ctrl + 方向键 可以调整每个 Pane 的大小，通过 Command + Option + 方向键 可以切换 Pane。



