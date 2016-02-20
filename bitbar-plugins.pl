#!/usr/bin/env perl
#
# Use after install bitbar
#
use strict;
use File::Basename;

my @plugins_to_activate=qw(Dev/Vagrant/vagrant.2m.pl System/Battery/mouse.1m.sh Dev/Docker/docker-status.1m.sh Network/bandwidth-test.2h.sh);

my $renamed = { 'bandwidth-test.2h.sh' => 'bandwidth-test.1d.sh'}; 

my $DIRECTORY_DEVELOPMENT = '/Volumes/HD/Development';

my $GITHUB_REPO = 'https://github.com/matryer/bitbar-plugins';

#
`defaults write com.matryer.BitBar pluginsDirectory '$DIRECTORY_DEVELOPMENT/bitbar-plugins/Enabled'`;

chdir $DIRECTORY_DEVELOPMENT;

`/usr/bin/env git clone "$GITHUB_REPO"`;

foreach my $plugin(@plugins_to_activate) {
        my $plugin_name = basename($plugin);
        $plugin_name = $renamed->{$plugin_name} if(exists($renamed->{$plugin_name}));

        print "Symlink $plugin_name to $DIRECTORY_DEVELOPMENT/bitbar-plugins/Enabled\n";
        `/bin/ln -s "$DIRECTORY_DEVELOPMENT/bitbar-plugins/$plugin" $DIRECTORY_DEVELOPMENT/bitbar-plugins/Enabled/$plugin_name`; 
}

# restarting BitBar
`/usr/bin/killall BitBar`;
`/usr/bin/open -a BitBar`
