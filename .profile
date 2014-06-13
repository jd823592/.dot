PS1="\[\e[01;32m\]\u@\h\[\e[01;34m\] \w \$\[\e[00m\] "

if [ $TERM = linux ]
then
    unicode_start ter-v16b
fi

if [ -f ~/.gpg-agent-info ]
then
    . ~/.gpg-agent-info
    export GPG_AGENT_INFO
    export SSH_AUTH_SOCK
    export GPG_TTY=`tty`
fi

if tty -s && ! gpg-agent -q
then
    gpg-agent --quiet --daemon --enable-ssh-support --write-env-file ~/.gpg-agent-info
fi

if [ -f ~/.gpg-agent-info ]
then
    . ~/.gpg-agent-info
    export GPG_AGENT_INFO
    export SSH_AUTH_SOCK
    export GPG_TTY=`tty`
fi

clear

export PATH="${PATH}:/home/jakub/bin"

if tty -s && [ -z "$TMUX" ]
then
    #if tmux has
    #then
    #    exec tmux attach
    #else
    #    exec tmux new
    #fi
    exec tmux attach
fi

export JAVA_HOME="/opt/oracle-jdk-bin-1.7.0.45"
export ANT_HOME="/usr/share/ant-core/"
export CLASSPATH="/usr/share/ant-junit/lib/ant-junit.jar"
