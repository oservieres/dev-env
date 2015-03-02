#!/bin/bash

#setup screen
xrandr --auto
xrandr --output HDMI1 --right-of eDP1 --primary
sleep 3
xfconf-query -c xfce4-panel -p /panels/panel-1/output-name -s HDMI1
xfconf-query -c xfce4-panel -p /panels/panel-1/size -s 26

#move windows

function move_window {
    WIDS=`xdotool search --class "$1"`
    for WID in $WIDS
    do
        wmctrl -ir $WID -b remove,maximized_vert,maximized_horz
        xdotool windowmove $WID 1366 0
        wmctrl -ir $WID -b add,maximized_vert,maximized_horz
    done
}

move_window "google-chrome-stable"
move_window "terminal"

