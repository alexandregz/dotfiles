#!/usr/bin/env bash
# from gh/karan/dotfiles

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


if ! command -v brew > /dev/null 2>&1; then
  echo "installing"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


echo $0

brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion
#brew install tree

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
#brew install homebrew/dupes/screen
#brew install homebrew/php/php55 --with-gmp

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install nmap

# last version
brew install ruby

# Install other useful binaries.
brew install git
brew install imagemagick --with-webp
brew install graphicsmagick
brew install lua
brew install luarocks
brew install unrar
brew install python
#brew install postgresql
#brew install mongodb
brew install gcc
# brew install ctags
brew install watch
#brew install fswatch
brew install ansible
brew install subversion
brew install gawk
brew install socat

brew install selenium-server-standalone
brew install chromedriver

#brew install gource

brew install carthage
brew install --HEAD https://github.com/codekitchen/dinghy/raw/latest/dinghy.rb


# Install Node.js. Note: this installs `npm` too, using the recommended
# installation method.
brew install node

brew install go
brew install nginx  

brew install composer
brew install links

# my utils
# brew install geoip
#brew install galen
brew install exiftool
brew install cpanminus
brew install sqlite

brew install gpg2

# taps
brew tap caskroom/cask
brew tap homebrew/completions
#brew tap homebrew/dupes
#brew tap homebrew/head-only
#brew tap homebrew/php
#brew tap homebrew/versions
brew tap karan/karan
brew tap telemachus/desc
brew tap alexandregz/mxhomebrew
brew tap gapple/services
brew tap aspnet/dnx
brew tap owntracks/recorder


# update after taps
brew update

#completions
brew install homebrew/completions/docker-machine-completion

brew install caskroom/cask/brew-cask

# my taps
brew install bashmarks
brew install lockbash
brew install docker-completion

#brew install dnvm

brew install dlite

brew install keybase

brew install android-platform-tools

# owntracks tap
brew install recorder

# cask
brew cask install google-chrome
brew cask install mamp
#brew cask install jdownloader
brew cask install vagrant
#brew cask install kitematic
brew cask install tunnelblick
brew cask install atom
brew cask install xquartz
brew cask install bitbar
brew cask install dockertoolbox
brew cask install helium

brew cask install whatsapp

brew cask install apptivate

# plugins quicklook
brew cask install qlimagesize
brew cask install betterzipql
# brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install suspicious-package
# brew cask install provisionql
# brew cask install quicklook-json

brew cask install gitup

brew install ntfs-3g

brew install --cask stats


# Remove outdated versions from the cellar.
brew cleanup

echo "Done $0"
