#!/usr/bin/env bash

# xboxdrv.gitlab.io/

# sudo apt install xboxdrv
# sudo apt install hwinfo

# hwinfo --joystick --short
# udevadm info -a /dev/input/event26

# SDL_JOYSTICK_DEVICE=/dev/input/event26 %command%

xboxdrv --evdev="/dev/input/event${1}" --config='/home/vivanov/Dev/github/ds4-xbox-joy/ds4.conf'

# cat /sys/class/hidraw/hidraw5/device/uevent
# sudo udevadm control --reload-rules && sudo udevadm trigger
