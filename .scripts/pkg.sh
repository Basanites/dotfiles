#!/bin/bash
pac=$(checkupdates | wc -l)
aur=$(cower -u | wc -l)

check=$((pac + aur))
if [[ "$check" != "0" ]]
then
	    echo "$pac %{F#2b2b2b}%{F-} $aur"
    fi

