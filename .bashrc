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
function color_my_prompt {
    local __user_and_host="\[\033[0;32m\]\u\[\033[00m\]@\[\033[36m\]\h"
    local __cur_location="\[\033[01;36m\]\w"
    local __git_branch_color="\[\033[31m\]"
    local __git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
    local __prompt_tail="\[\033[35m\]$"
    local __last_color="\[\033[00m\]"
    export PS1="$__user_and_host $__cur_location $__git_branch_color$__git_branch$__prompt_tail$__last_color "
}

color_my_prompt

#PS1='\[\033[0;32m\]\u\[\033[00m\]@\[\033[36m\]\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[31m\]`git branch[\033[00m\]\$ '

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

# Git aliases
alias gits='git status'
alias gitc='git commit'
alias gita='git add'
alias gitd='git diff'
alias gitp='git push'

export EDITOR=vim

eval `ssh-agent -s` > /dev/null

export PATH
