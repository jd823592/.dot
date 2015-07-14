#!/bin/sh

bin/randr
setxkbmap gb
exec /etc/X11/Sessions/xmonad
