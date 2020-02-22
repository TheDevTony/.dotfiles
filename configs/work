#!/bin/bash

# author: john violano
# note: couldn't get desktop preselction to work so the first
# of each window per desktop is spawned on desktop 1 and moved

function move_to_desktop_asap {
    while [ true ]
    do
        # new apps are spawned on desktop 1
        W=$(bspc query -W -d ^1)
        echo "[$W]"
        if [ -n "$W" ];
        then
            break
        fi
    done
    # $1 is passed in desktop, i.e. ^3
    $(bspc window $W --to-desktop $1)
}

# terminals
termite &
move_to_desktop_asap ^1

# browser
google-chrome-stable &
move_to_desktop_asap ^2

# IntelliJ
sh ~/.local/share/JetBrains/Toolbox/bin/idea &
move_to_desktop_asap ^3
