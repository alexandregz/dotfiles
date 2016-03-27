# bashmarks
source /usr/local/Cellar/bashmarks/1.0/libexec/bashmarks.sh

# aspnet
#source dnvm.sh

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# token para github, para evitar limites com homebrew
#export HOMEBREW_GITHUB_API_TOKEN=

# homebrew editor, to create formulae
export HOMEBREW_EDITOR="vim"
export EDITOR=vim

# ---------------------------------
# prompt by fbarbeira (https://github.com/fbarbeira/bash/) and ofigueroa
PS1='\[\033[00;32m\]\u\[\033[01m\]@\[\033[00;36m\]\h\[\033[01m\]:\[\033[00;35m\]\w\[\033[00m\]\[\033[01;30m\]$(__git_ps1 "(%s)")\[\033[00m\]\$ '
#PS1='\[\033[00;32m\]\u\[\033[01m\]@\[\033[00;36m\]\h\[\033[01m\]:\[\033[00;35m\]\w\[\033[00m\]\[\033[01;30m\]$(__git_ps1 "(%s)")\[\033[00m\]\$ '

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# de fbarbeira too
# Establecemos el PATH para que pille con prioridad los programas instalados
# mediante brew.
PATH="/usr/local/bin:/usr/local/sbin:${PATH}"

# Shell colors.
CLICOLOR=1
LSCOLORS=ExFxCxDxBxegedabagacad
#-----------------------------

#-----------------------------
# from gh/soulshake/noobash
function rhost () {
	host $1|head -1|cut -d ' ' -f 4|xargs host
}
# host $(dig squirrel.li +short)
#-----------------------------

#-----------------------------
# from gh/JaKXz
brewinfo() { brew info "$1"; brew desc "$1"; } # get all information on a brew package.
#-----------------------------


# quitar erro de 
# -bash: __git_ps1: command not found
# http://stackoverflow.com/questions/12870928/mac-bash-git-ps1-command-not-found
source ~/.git-prompt.sh

# aspnet
source dnvm.sh

# GOPATH AND gobin
GOPATH=/Volumes/HD/dev/go
PATH="/Volumes/HD/dev/go/bin:${PATH}"

# phpenv
PATH="/Users/alex/.phpenv/bin:$PATH"
eval "$(phpenv init -)"

# phpbrew
[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc
