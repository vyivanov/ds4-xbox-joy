#!/usr/bin/env bash

# sudo apt install xboxdrv
# sudo apt install hwinfo

# hwinfo --joystick --short
# udevadm info -a /dev/input/event26

# SDL_JOYSTICK_DEVICE=/dev/input/event26 %command%

xboxdrv --config=ds4.conf 2>&1 | tee -a debug.txt

# cat /sys/class/hidraw/hidraw5/device/uevent

# KERNEL=="event*", ATTRS{name}=="Wireless Controller", SYMLINK+="input/by-id/usb-Sony_DS4_Controller-event-js"
# sudo udevadm control --reload-rules && sudo udevadm trigger
