# Variables #
#

XDG_CONFIG_HOME=~/.config
ALSA_CARD=Intel
BACKGROUND="/home/lautnern/pictures/wallpapers/landscapes/sun_people_desert_camel_8014x5000.jpg"
BROWSER="qutebrowser"
TERMINAL="st"
export XDG_CONFIG_HOME
export ALSA_CARD
export BACKGROUND
export BROWSER
export TERMINAL

if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
    SESSION_TYPE=remote/ssh
else
    SESSION_TYPE=local
    exec startx
fi

if aplay -l | grep "CODEC" > /dev/null; then
    ALSA_CARD=CODEC
fi

