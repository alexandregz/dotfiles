# bashmarks
source /usr/local/Cellar/bashmarks/1.0/libexec/bashmarks.sh

# aspnet
source dnvm.sh

# git-local (from gh/IonicaBizau/git-stats)
# Override the Git command
git() {
  cmd=$1
  shift
  extra=""

  quoted_args=""
  whitespace="[[:space:]]"
  for i in "$@"
  do
      quoted_args="$quoted_args \"$i\""
  done

  cmdToRun="`which git` "$cmd" $quoted_args"
  cmdToRun=`echo $cmdToRun | sed -e 's/^ *//' -e 's/ *$//'`
  bash -c "$cmdToRun"
  if [ $? -eq 0 ]; then
    # clone command
    if [ "$cmd" == "clone" ]; then
      echo "$(pwd)|${quoted_args#?}|$(date)" >> ~/.git-local.data
      # if [ ! -f ~/.git-local.db ]; then
      #     sqlite3 ~/.git-local.db "create table repos (id INTEGER PRIMARY KEY, path TEXT, repo TEXT, date TEXT);"
      # else
      #     sqlite3 ~/.git-local.db "select * from repos" &> /dev/null
      #     if [ $? -ne 0 ]; then
      #         sqlite3 ~/.git-local.db "create table repos (id INTEGER PRIMARY KEY, path TEXT, repo TEXT, date TEXT);"
      #     fi
      # fi

      # # remove first char, because is always one space
      # sqlite3 ~/.git-local.db "insert into repos (path, repo, date) values ('"$(pwd)"', '${quoted_args#?}', CURRENT_TIMESTAMP);"
    fi
  fi
}




# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{bash_prompt,bash_aliases}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;


if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# token para github, para evitar limites com homebrew
export HOMEBREW_GITHUB_API_TOKEN=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

# homebrew editor, to create formulae
export HOMEBREW_EDITOR="vim"

# ---------------------------------
# prompt by fbarbeira (https://github.com/fbarbeira/bash/) and ofigueroa
PS1='\[\033[00;32m\]\u\[\033[01m\]@\[\033[00;36m\]\h\[\033[01m\]:\[\033[00;35m\]\w\[\033[00m\]\[\033[01;30m\]$(__git_ps1 "(%s)")\[\033[00m\]\$ '




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



# path to the bin folder where we store boot2docker and docker files
export PATH=$PATH:${HOME}/bin



# GOPATH AND gobin
export GOPATH=/Volumes/HD/Development/go/
PATH="/Volumes/HD/Development/go/bin:${PATH}"

source $(brew --prefix php-version)/php-version.sh && php-version 5

export GPGKEY=xxxxxxxxxxxxxxx


HISTFILESIZE=10000000
