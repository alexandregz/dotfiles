# all from:
# https://github.com/mathiasbynens/dotfiles/blob/master/.osx
# https://github.com/paulmillr/dotfiles/blob/master/etc/osx.sh

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Reveal IP address, hostname, OS version, etc. when clicking the clock
# in the login window
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

# Enable the WebKit Developer Tools in the Mac App Store
defaults write com.apple.appstore WebKitDeveloperExtras -bool true

# Enable Debug Menu in the Mac App Store
defaults write com.apple.appstore ShowDebugMenu -bool true

# recover keys repetition
defaults write -g ApplePressAndHoldEnabled -bool false

# show all partitions with Disk Utility
defaults write com.apple.DiskUtility DUDebugMenuEnabled 1
