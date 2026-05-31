<div align="center">

# kali-zsh-theme

**Bring Kali Linux's signature two-line prompt to [Oh My Zsh](https://ohmyz.sh/) on any system.**

No need to install all of Kali — a single theme file gives you the same terminal look.

[简体中文](README.md) · **English**

![CI](https://github.com/casperkwok/kali-zsh-theme/actions/workflows/lint.yml/badge.svg)
![Shell](https://img.shields.io/badge/shell-zsh-1f9bdc?logo=zsh&logoColor=white)
![Oh My Zsh](https://img.shields.io/badge/Oh%20My%20Zsh-compatible-c4302b)
![License](https://img.shields.io/badge/license-GPL--3.0-blue)
![Platform](https://img.shields.io/badge/platform-macOS%20%7C%20Linux-lightgrey)

<br/>

<img src="preview.svg" alt="Kali zsh theme preview" width="700"/>

</div>

---

## What is this

Kali Linux ships with a zsh prompt that looks like this:

```
┌──(kali㉿kali)-[~]
└─$
```

It comes from Kali's official [`kali-defaults`](https://gitlab.com/kalilinux/packages/kali-defaults) package. This theme extracts that prompt logic and packages it as a standard Oh My Zsh theme, so you can get the same look on **macOS, Ubuntu, WSL** — anywhere Oh My Zsh runs.

## Features

| | Description |
|---|---|
| 🪜 **Two-line prompt** | First line shows `user㉿host` + current path; the second line is dedicated to typing, so long commands never get cramped |
| 🔴 **Auto-red for root** | As root, the line turns red and `$` becomes `#` — instantly distinguish privilege level and avoid mistakes |
| 📁 **Smart path truncation** | Paths deeper than 6 levels collapse to `tools/…/recon/scans/web`, keeping deep directories readable |
| 🐍 **Environment aware** | Detects Python virtualenvs and chroot, surfacing them right in the prompt |
| ⨯ **Exit code hint** | On failure, the right side shows the exit code with an `⨯` marker |
| ⚙ **Background jobs** | When background jobs are suspended, the right side shows `⚙ N` |

## Installation

> Prerequisite: [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh#basic-installation) is installed.

**1. Download the theme into Oh My Zsh's custom themes directory**

```bash
curl -fsSL https://raw.githubusercontent.com/casperkwok/kali-zsh-theme/main/kali.zsh-theme \
  -o ~/.oh-my-zsh/custom/themes/kali.zsh-theme
```

**2. Enable it in `~/.zshrc`**

```bash
ZSH_THEME="kali"
```

**3. Reload**

```bash
source ~/.zshrc
```

Done 🎉 — your terminal switches to the Kali look right away.

## Fonts

The prompt uses box-drawing characters `┌ └ ─` and `㉿` (U+327F). Most modern monospace fonts render these fine, but for the best alignment install a [Nerd Font](https://www.nerdfonts.com/):

```bash
# macOS
brew install --cask font-hack-nerd-font
```

Then set your terminal font to `Hack Nerd Font` (or any Nerd Font).

## Customization

Don't like the `㉿` between username and hostname? Edit `~/.oh-my-zsh/custom/themes/kali.zsh-theme` and change:

```bash
prompt_symbol=㉿
```

to whatever you prefer, e.g. the classic `@`:

```bash
prompt_symbol=@
```

Then `source ~/.zshrc`.

## Pair with plugins for a closer Kali feel

Kali's terminal experience relies on two plugins. They go great with this theme:

```bash
# macOS (Homebrew)
brew install zsh-syntax-highlighting zsh-autosuggestions
```

Append to `~/.zshrc`:

```bash
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
```

## Uninstall

Change `ZSH_THEME="kali"` back to your previous theme and remove the file:

```bash
rm ~/.oh-my-zsh/custom/themes/kali.zsh-theme
```

## Credits

Prompt logic comes from the [Kali Linux `kali-defaults`](https://gitlab.com/kalilinux/packages/kali-defaults) project (GPL-3.0). This repo only repackages and ports it, and is not affiliated with Offensive Security / the Kali Linux team.

## License

[GPL-3.0](LICENSE) — consistent with the upstream `kali-defaults`.
