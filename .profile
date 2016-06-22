#!/bin/sh

source ~/.gpg-agent

export PATH="$HOME/bin:$PATH"

if tty -s && [ -z "$TMUX" ]
then
    #PS1="\[\e[01;32m\]\u@\h\[\e[01;34m\] \w \$\[\e[00m\] "
    export PS1="\[\e[01;35m\]λ\[\e[00m\] "
    clear
    exec tmux attach
fi

export CC=clang
export CXX=clang

export CLASSPATH="/usr/share/ant-junit/lib/ant-junit.jar"
