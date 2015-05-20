#!/bin/sh


if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?* ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

synclient MaxTapTime=0
synclient HorizTwoFingerScroll=1

xset m 0 &
xset r rate 300 30 &
xset b off &
xsetroot -cursor_name left_ptr &
xset +fp /usr/share/fonts/local &
xset fp rehash &
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources &
feh --bg-scale ~/wallpapers/colorful.jpg
compton &
sxhkd &
mpd &
mpc load Main
mpc random on

exec bspwm
