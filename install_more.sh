#!/bin/sh
#
# more software
#

# gems
sudo gem update --system

# CocoaPods
sudo gem install cocoapods
pod setup --verbose

#sudo gem install nokogiri


# wheels
sudo pip install wheel
