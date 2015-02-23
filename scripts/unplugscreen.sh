#!/bin/bash

xrandr --auto
sleep 3
xfconf-query -c xfce4-panel -p /panels/panel-1/output-name -s eDP1
xfconf-query -c xfce4-panel -p /panels/panel-1/size -s 20
