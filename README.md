# kali-zsh-theme

把 Kali Linux 那个标志性的双行提示符搬到任意系统的 [Oh My Zsh](https://ohmyz.sh/) 上。

```
┌──(kali㉿kali)-[~]
└─$
```

复刻自 Kali 官方 `kali-defaults` 包里的 zsh 提示符，无需安装整个 Kali。

## 特性

- 双行提示符：第一行显示 `用户㉿主机` 和当前路径，第二行是输入行
- root 用户自动变红，`$` 变成 `#`
- 路径超过 6 层自动折叠为 `xxx/…/a/b/c/d`
- 自动识别 Python 虚拟环境 (`virtualenv`) 与 chroot
- 右侧提示符：命令失败时显示退出码 `⨯`，有后台任务时显示 `⚙ N`

## 安装

需要已安装 [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)。

```bash
# 下载主题到 Oh My Zsh 自定义主题目录
curl -fsSL https://raw.githubusercontent.com/casperkwok/kali-zsh-theme/main/kali.zsh-theme \
  -o ~/.oh-my-zsh/custom/themes/kali.zsh-theme
```

然后在 `~/.zshrc` 中设置：

```bash
ZSH_THEME="kali"
```

重新打开终端，或执行 `source ~/.zshrc` 即可生效。

## 字体

框线字符 `┌ └ ─` 和 `㉿` 需要终端字体支持。大多数现代字体都没问题，想要最佳效果推荐安装 [Nerd Font](https://www.nerdfonts.com/)：

```bash
brew install --cask font-hack-nerd-font
```

## 自定义

不喜欢用户名和主机名之间的 `㉿`？编辑主题文件，把：

```bash
prompt_symbol=㉿
```

改成：

```bash
prompt_symbol=@
```

## 致谢

提示符逻辑来自 [Kali Linux `kali-defaults`](https://gitlab.com/kalilinux/packages/kali-defaults)（GPL）。

## License

GPL-3.0
