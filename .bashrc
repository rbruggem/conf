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

# required to run android studio with dwm (see https://wiki.haskell.org/Xmonad/Frequently_asked_questions)
export _JAVA_AWT_WM_NONREPARENTING="1"

# android studio
export ANDROID_HOME=${HOME}/Android/Sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
export PATH=${PATH}:/usr/local/android-studio/bin

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias sl='ls --color=auto'
alias ls='ls --color=auto'
alias gg='git grep --color=auto'
alias mk='make -j$( cat /proc/cpuinfo  | grep  processor | wc -l)'
