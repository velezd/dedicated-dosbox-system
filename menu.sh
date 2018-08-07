#!/bin/bash

tmp_selection=/tmp/selection_tmp
loop=true

while $loop; do

	dialog --title "Main menu" \
		--nocancel \
		--menu "" 10 30 4 \
		1 "Start DOSBOX" \
		2 "Options" \
		3 "Shutdown" \
		4 "Exit menu" 2> $tmp_selection

	selection=$(cat $tmp_selection)

	case $selection in
		1) bash .bashrc ;;
		2) ./options.sh ;;
		3) shutdown -h now ;;
		4) loop=false
	esac

done

