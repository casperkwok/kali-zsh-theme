# Kali Linux 风格的 Oh My Zsh 主题
# 复刻 Kali 官方 kali-defaults 包中的两行提示符
#
#   ┌──(user㉿host)-[~/path]
#   └─$
#
# 普通用户为蓝色/绿色，root 自动变红并将 $ 换成 #。
# 右侧提示符在命令失败时显示退出码，有后台任务时显示任务数。

prompt_symbol=㉿
# 想去掉用户名和主机名之间的 ㉿，把上面一行改成 prompt_symbol=@

PROMPT=$'%F{%(#.blue.green)}┌──${debian_chroot:+($debian_chroot)─}${VIRTUAL_ENV:+($(basename $VIRTUAL_ENV))─}(%B%F{%(#.red.blue)}%n'$prompt_symbol$'%m%b%F{%(#.blue.green)})-[%B%F{reset}%(6~.%-1~/…/%4~.%5~)%b%F{%(#.blue.green)}]\n└─%B%(#.%F{red}#.%F{blue}$)%b%F{reset} '

RPROMPT=$'%(?.. %? %F{red}%B⨯%b%F{reset})%(1j. %F{yellow}%B⚙ %j%b%F{reset}.)'
