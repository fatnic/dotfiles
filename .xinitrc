xset fp+ ~/.fonts 
xset fp rehash
xsetroot -cursor_name left_ptr

source .Xresources

export LANG=en_GB.UTF-8

synclient TapButton2=3
synclient TapButton3=2

dropbox &
compton &

torrent_check.py &

sh ~/.fehbg

sxhkd &
exec bspwm
