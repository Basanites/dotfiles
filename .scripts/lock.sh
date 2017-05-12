#!/usr/bin/env bash
#depends on: imagemagick, scrot, i3lock

icon="/home/sebastian/Pictures/lock.png"
tmpbg='/tmp/screen.png'
text='/tmp/locktext.png'


(( $# )) && { icon=$1; }

scrot "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
[ -f $text ] || {
    convert -size 3000x60 xc:606060 -font Liberation-Sans -pointsize 26 -fill black -gravity center -annotate +0+0 'Enter password to unlock' $text;
    convert $text -alpha set -channel A -evaluate set 50% $text;
}
convert $tmpbg $text -gravity center -geometry +0+200 -composite $tmpbg
#convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
i3lock -i "$tmpbg" &
