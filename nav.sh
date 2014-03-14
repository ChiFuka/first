#!/bin/sh
#set -e
#set -x

while [  1 > 0 ]; do
    echo "
	    UP 19
    LEFT 21 CENTER 23 RIGHT 22
	    DOWN 20
BACK 4

"
    read KEY
    case $KEY in
	#UP
	'^[[1;5A')
	`adb shell input keyevent 19`
	;;
	#DOWN
	'^[[1;5B')
	`adb shell input keyevent 20`
	;;
	#RIGHT
	'^[[1;5C')
	`adb shell input keyevent 22`
	;;
	#LEFT
	'^[[1;5D')
	`adb shell input keyevent 21`
	;;
	#CENTER
	'+')
	`adb shell input keyevent 23`
	;;
	#ESC
	'-')
	`adb shell input keyevent 4`
	;;
    esac
done
