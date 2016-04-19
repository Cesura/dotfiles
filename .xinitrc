# exec startxfce4
# 
# sxhkd %
# exec bspwm
#

mpd &
compton &
feh --bg-fill ~/wallpapers/cube.png
xautolock -time 10 -locker /home/brad/bin/lock.sh &
xss-lock -- /home/brad/bin/lock.sh &
xset +fp /home/brad/.fonts &
xset fp rehash &
exec i3
