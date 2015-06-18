xset fp+ ~/.fonts 
xset fp+ ~/.fonts/powerline-fonts
xset fp rehash

dropbox &
compton &

feh --bg-fill ~/Pictures/Wallpaper/wallhaven-176560.jpg

sxhkd &
exec bspwm
