# alias cores (NOTE: profiles must be created at iTerm2 prefs)
alias backtoblack='echo -e "\033]50;SetProfile=black\a"'
alias white='echo -e "\033]50;SetProfile=Default\a"'

alias tabred='echo -e "\033]6;1;bg;red;brightness;255\a"'
alias tabyellow='echo -e "\033]6;1;bg;red;brightness;255\a" && echo -e "\033]6;1;bg;green;brightness;255\a" && echo -e "\033]6;1;bg;blue;brightness;0\a" '
alias tabdarkorange='echo -e "\033]6;1;bg;red;brightness;255\a" && echo -e "\033]6;1;bg;green;brightness;140\a" && echo -e "\033]6;1;bg;blue;brightness;0\a" '
alias tabcolorreset='echo -e "\033]6;1;bg;*;default\a"'
alias tabgreen='echo -e "\033]6;1;bg;green;brightness;255\a"'
alias tabblue='echo -e "\033]6;1;bg;red;brightness;120\a" && echo -e "\033]6;1;bg;green;brightness;100\a" && echo -e "\033]6;1;bg;blue;brightness;255\a"'


alias ls='ls -G'

# shortcuts
alias dev='cd /Volumes/HD/dev'

# connect to my hosts
alias voyager='tabdarkorange; title "root@voyager"; ssh root@voyager.local; tabcolorreset'
alias sputnik='backtoblack; tabyellow; title "pi@sputnik"; ssh pi@sputnik.local; tabcolorreset; white'
alias samygo='tabdarkorange; title "root@samygo"; ssh root@samygo.local; tabcolorreset'

alias apollo='tabdarkorange; title "alex@apollo"; ssh alex@apollo.local; tabcolorreset'

###############################################################################
# From https://github.com/erwanjegouzo/dotfiles/blob/master/.bash_profile
# but with MAMP
###############################################################################
alias phplog="tail -f /Applications/MAMP/logs/php_error.log"

# MAMP's mysql
alias mysqlmamp="/Applications/MAMP/Library/bin/mysql"
alias htdocs='cd /Applications/MAMP/htdocs'

alias phpmamp="/Applications/MAMP/bin/php/php5.5.17/bin/php"

# old CPU
alias docker-launch="tabblue; /Applications/Docker/Docker\ Quickstart\ Terminal.app/Contents/Resources/Scripts/start.sh"

function title ()
{
    TITLE=$*;
    echo -ne "\033]0;$TITLE\007"
}
