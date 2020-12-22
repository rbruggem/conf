HISTSIZE=10000
HISTFILESIZE=20000
HISTCONTROL=ignoreboth
shopt -s histappend

if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
else
    export PS1="\u@\h:\w$ "
fi

# bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
[ -f /etc/bash_completion ] && . /etc/bash_completion
for file in /etc/bash_completion.d/*; do
    source "$file" > /dev/null 2>&1
done
if type brew >/dev/null 2>&1  && [ -f $(brew --prefix)/etc/bash_completion ]; then
    source $(brew --prefix)/etc/bash_completion
fi

if [ -x $(which terraform) ]; then
    complete -C $(which terraform) terraform
fi

# paths
PATH=$PATH:~/bin
export PATH

LIBRARY_PATH=""

# go
export GOROOT=/usr/local/go
export GOPATH=${HOME}/src/go
PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# rust
[ -x $HOME/.cargo/env ] && . $HOME/.cargo/env

# python
[ -x $HOME/.pyenv/bin/pyenv ] && eval "$HOME/.pyenv/bin/pyenv init -" > /dev/null 2>&1

# node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# os specific
case "$(uname -s)" in
    Darwin*)
        export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$LIBRARY_PATH
        ;;
    Linux*)
        export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$LIBRARY_PATH
        ;;
esac

# editor
export EDITOR=vi

# aliases
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias gg='git grep --color=auto'

# zsh is the default shell on mac. This removes the deprecation warning
export BASH_SILENCE_DEPRECATION_WARNING=1
