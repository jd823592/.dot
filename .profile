PS1="\[\e[01;32m\]\u@\h\[\e[01;34m\] \w \$\[\e[00m\] "

GPG_AGENT_INFO_FILE=~/.gpg-agent-info

if [ -f $GPG_AGENT_INFO_FILE ] || tty -s && ! gpg-agent -q
then
    gpg-agent --quiet --daemon --enable-ssh-support --write-env-file $GPG_AGENT_INFO_FILE
fi

. $GPG_AGENT_INFO_FILE
export GPG_AGENT_INFO
export SSH_AUTH_SOCK
export GPG_TTY=`tty`

clear

export PATH="${PATH}:/home/jakub/bin"

if tty -s && [ -z "$TMUX" ]
then
    exec tmux attach
fi

export JAVA_HOME="/opt/oracle-jdk-bin-1.7.0.45"
export ANT_HOME="/usr/share/ant-core/"
export CLASSPATH="/usr/share/ant-junit/lib/ant-junit.jar"
