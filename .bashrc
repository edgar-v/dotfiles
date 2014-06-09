#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return



# Ingen duplikate linjer i historien
export HISTCONTROL=ignoreboth
export HISTFILESIZE=9999
export HISTIGNORE="ls:l:l -rt:cd:logout:exit:echo:"

# Oppdater størrelsen på vinduet når vi resizer
shopt -s checkwinsize


# Give colorized prompt
PS1='\[\a\]${debian_chroot:+($debian_chroot)}\[\033[0;32m\]\u\[\033[00m\]@\[\033[36m\]\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ '

case "$TERM" in
screen*)
    # Setter tittle for xterm/kompatible, og kjørende kommando for screen, Pass på å putte denne i .screenrc: shelltitle '$ |'
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007\033k\033\\"'
    eval "`dircolors -b`"
    alias ls='ls --color=auto -F'
    ;;
xterm*|rxvt*)
    # Setter tittel i xterm/kompatible
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
    eval "`dircolors -b`"
    alias ls='ls --color=auto -F'
    ;;
*)
    ;;
esac

# ls aliases
alias ll='ls -CA'
alias la='ls -a'
alias l='ls -lha'

# OpenGL compilation
alias gl++="g++ -lGL -lGLU -lglut -lGLEW" 

export EDITOR=vim

export WORKON_HOME=~/.virtualenvs
VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source /usr/bin/virtualenvwrapper.sh

eval `ssh-agent -s` > /dev/null

export PATH
