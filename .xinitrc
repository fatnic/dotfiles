xset fp+ ~/.fonts 
xset fp rehash
xsetroot -cursor_name left_ptr

[[ -f ~/.Xresources  ]] && xrdb -merge ~/.Xresources

export LANG=en_GB.UTF-8
setxkbmap gb

synclient TapButton2=3
synclient TapButton3=2

export MOZ_USE_OMTC=1

dropbox &
compton &
devmon &
dunst &

#torrent_check.py &

sh ~/.fehbg

sxhkd &
exec bspwm
