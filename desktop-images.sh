#!/bin/bash
#
# Todo
#       download from arguments
#       check number desktops
#       use Javascript Apple?
#

function download_image
{
        echo "Getting $1 to $2"
        wget -nv "$WEB_IMAGES""$1" -O "$2" 
}



# nice pictures from Tere Borace :-)
WEB_IMAGES="http://tereborace.com/imaxes/"

DIR_PICTURES=~/Pictures/tereborace.com
IMAGES=( _DSC0050.jpg paisaxe2.jpg )
#IMAGES=( paisaxe2.jpg _DSC0050.jpg )

#IMAGES=( paisaxe2.jpg )
#IMAGES=( _DSC0050.jpg )


APPLESCRIPT='tell application "System Events"
        set theDesktops to a reference to every desktop
'

#        set picture of item 1 of the theDesktops to "$DIR_PICTURES/_DSC0050.jpg"
#        set picture of item 2 of the theDesktops to "$DIR_PICTURES/paisaxe2.jpg"
#end tell'


mkdir -p $DIR_PICTURES

COUNTER=1
for image in  "${IMAGES[@]}"
do
        LOCAL_PATH="$DIR_PICTURES/$image"

        if [ ! -f $LOCAL_PATH ]; then
                download_image $image $LOCAL_PATH
        fi

        CHECK_IMAGE=$(file --mime-type "$LOCAL_PATH" | fgrep -q image)
        if [ $? -gt 0 ]; then
                download_image $image $LOCAL_PATH
        fi

        APPLESCRIPT=$APPLESCRIPT"       set picture of item $COUNTER of the theDesktops to \"$LOCAL_PATH\"
"
        COUNTER=$((COUNTER+1))
done

APPLESCRIPT=$APPLESCRIPT"end tell"
#echo "$APPLESCRIPT"

osascript -e "$APPLESCRIPT"
