#!/bin/bash
pac=$(checkupdates | wc -l)
aur=$(cower -u | wc -l)

check=$((pac + aur))
if [[ "$check" != "0" ]]
then
	echo "$pac %{F#E6E1DC}%{F-} $aur"
else
	echo ""
fi

