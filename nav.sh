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
    read KEYCODE
    `adb shell input keyevent $KEYCODE`
done