
alias sba="source ~/.bash_aliases"

# in luckfox-pico/sysdrv/source/kernel directory
alias cmc="cp ./arch/arm/configs/luckfox_rv1106_linux_defconfig_backup .config"
alias mmc="make ARCH=arm menuconfig"
alias smc="make ARCH=arm savedefconfig"
alias cfg="cp defconfig ./arch/arm/configs/luckfox_rv1106_linux_defconfig"


# show git git branch in prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]
\$(parse_git_branch)\[\e[00m\]$ "