#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap
export AWT_TOOLKIT=MToolkit
export _JAVA_AWT_WM_NONREPARENTING=1
export SXHKD_SHELL=/usr/bin/bash

# merge in defaults and keymaps

#if [ -f $sysresources ]; then
#    xrdb -merge $sysresources
#fi

#if [ -f $sysmodmap ]; then
#    xmodmap $sysmodmap
#fi

#if [ -f "$userresources" ]; then
#    xrdb -merge "$userresources"
#fi

#if [ -f "$usermodmap" ]; then
#    xmodmap "$usermodmap"
#fi

#xsetroot -cursor_name left_ptr &
#ibus-daemon -drx &
exec bspwm -c ~/.config/bspwm/bspwmrc &
sxhkd
