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

# ---------------------------------
# PS1 from github.com/fbarbeira
PS1='\[\033[00;32m\]\u\[\033[01m\]@\[\033[00;36m\]\h\[\033[01m\]:\[\033[00;35m\]\w\[\033[00m\]\[\033[01;30m\]$(__git_ps1 "(%s)")\[\033[00m\]\$ '

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



# quitar erro de 
# -bash: __git_ps1: command not found
# http://stackoverflow.com/questions/12870928/mac-bash-git-ps1-command-not-found
source ~/.git-prompt.sh


###############################################################################
# From http://github.com/mathiasbynens/dotfiles                               #
###############################################################################

# Enable the WebKit Developer Tools in the Mac App Store
defaults write com.apple.appstore WebKitDeveloperExtras -bool true

# Enable Debug Menu in the Mac App Store
defaults write com.apple.appstore ShowDebugMenu -bool true

# show filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true



###############################################################################
# others
###############################################################################

# recover keys repetition
defaults write -g ApplePressAndHoldEnabled -bool false

# show all partitions with Disk Utility
defaults write com.apple.DiskUtility DUDebugMenuEnabled 1

