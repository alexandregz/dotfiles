
umask 022

PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/syno/sbin:/usr/syno/bin:/usr/local/sbin:/usr/local/bin
export PATH

PATH=$PATH:/opt/bin
export PATH

#This fixes the backspace when telnetting in.
#if [ "$TERM" != "linux" ]; then
#        stty erase
#fi

HOME=/root
export HOME

TERM=${TERM:-cons25}
export TERM

PAGER=more
export PAGER

# PS1="`hostname`> "

# new ps1 from http://blog.arinium.fi/2012/09/howto-working-directory-in-synology-ds211j-shell-prompt/
PS1="`whoami`@`hostname | sed 's/\..*//'`:\w"
case `id -u` in
0) PS1="${PS1}# ";;
*) PS1="${PS1}$ ";;
esac


alias dir="ls -al"
alias ll="ls -la"
PATH=$PATH:/var/packages/JavaManager/target/Java/bin # Synology Java Manager Package
PATH=$PATH:/var/packages/JavaManager/target/Java/jre/bin # Synology Java Manager Package
export PATH # Synology Java Manager Package
