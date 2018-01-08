# .bashrc
export TERM=xterm-color
#export PS1='\h
#export PS1='\h:\$'
# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
xterm-color)
    PS1='${debian_chroot:+($debian_chroot)}\[\033[0;35m\]\u@\h\[\033[00m\]:\[\033[00m\]\$ '
    ;;
*)
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
    ;;
esac

#set -o vi

umask 002

# Adding colour discriptions to files and dirs
export LS_OPTIONS='-G'
export MANPATH=""
# User specific aliases and functions
HISTIGNORE="&:ls:[bf]g:exit"


PATH=$PATH:/sbin
export CLICOLOR=1
export LSCOLORS=fxfxcxdxbxegedabagacad
