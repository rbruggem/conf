HISTSIZE=10000
HISTFILESIZE=20000
HISTCONTROL=ignoreboth
shopt -s histappend

if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

PATH=$PATH:~/bin
export PATH

export EDITOR=vi

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias sl='ls --color=auto'
alias ls='ls --color=auto'
alias gg='git grep --color=auto'
alias mk='make -j$( cat /proc/cpuinfo  | grep  processor | wc -l)'
