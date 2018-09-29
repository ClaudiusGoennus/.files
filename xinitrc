setxkbmap -model thinkpad -layout de
/home/lautnern/scripts/toggle_monitors
exec i3
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
