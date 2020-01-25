HISTSIZE=10000
HISTFILESIZE=20000
HISTCONTROL=ignoreboth
shopt -s histappend

if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

PATH=$PATH:~/bin
export PATH

LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
export LD_LIBRARY_PATH

export EDITOR=vi

# bash completion
source /etc/bash_completion
for file in /etc/bash_completion.d/*; do
    source "$file" > /dev/null 2>&1
done

# go
export GOROOT=/usr/local/go
export GOPATH=${HOME}/src/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin


alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias sl='ls --color=auto'
alias ls='ls --color=auto'
alias gg='git grep --color=auto'
