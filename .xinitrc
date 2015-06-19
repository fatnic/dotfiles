xset fp+ ~/.fonts 
xset fp rehash

synclient TapButton2=3
synclient TapButton3=2

dropbox &
compton &

feh --bg-fill ~/Pictures/Wallpaper/helmet.jpg

bar &
sxhkd &
exec bspwm
