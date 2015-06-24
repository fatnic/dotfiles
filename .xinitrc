xset fp+ ~/.fonts 
xset fp rehash

export LANG=en_GB.UTF-8

synclient TapButton2=3
synclient TapButton3=2

dropbox &
compton &

torrent_check.py &

feh --bg-fill ~/Pictures/Wallpaper/wallhaven-52623.jpg

bar &
sxhkd &
exec bspwm
