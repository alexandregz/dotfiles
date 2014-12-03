alias ls='ls -G'

# connect to my hosts
alias voyager='ssh root@192.168.1.8'
alias sputnik='ssh pi@192.168.1.69'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# token para github, para evitar limites com homebrew
#export HOMEBREW_GITHUB_API_TOKEN=

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


###############################################################################
# From https://github.com/erwanjegouzo/dotfiles/blob/master/.bash_profile
# but with MAMP
###############################################################################
alias phplog="tail -f /Applications/MAMP/logs/php_error.log"
