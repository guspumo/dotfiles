urxvtd -o -q -f
xrdb -merge ~/.config/X11/.Xresources
udiskie &
barrier &
exec i3
