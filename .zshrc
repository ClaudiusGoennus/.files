# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=2000
SAVEHIST=1000
setopt appendhistory autocd extendedglob
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/lautnern/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


##### CUSTOM OPTIONS #####
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushd_silent
setopt pushd_to_home

## COMPLETION
#setopt always_to_end
setopt glob_complete
setopt list_packed
setopt list_types
setopt menu_complete

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

##### PROMTP #####
PS1="%{$fg[blue]%}%F{5}%m%f %F{2}%~%f%{$reset_color%} $ "

##### ALIASES #####

## DIRECTORIES
alias -g docs="cd ${HOME}/Documents/ && ls"
alias -g band="cd ${HOME}/Documents/Band/ && ls"
alias -g scr="cd ${HOME}/Scripts/ && ls"
alias -g arch="cd ${HOME}/Documents/Archive/ && ls"
alias -g proj="cd ${HOME}/Projects/ && ls"
    # PROJECTS
    alias -g fit="cd ${HOME}/Projects/Fitness-App/ && ls"
    alias -g yhtb="cd ${HOME}/Projects/youhavethebridge/ && ls"

## CONFIG FILES
alias -g i3conf="vim ${HOME}/.config/i3/config"
alias -g bashrc="vim ${HOME}/.bashrc"
alias -g xrc="vim ${HOME}/.xinitrc"
alias -g xres="vim ${HOME}/.Xresources"
alias -g vimrc="vim ${HOME}/.vimrc" 
alias -g zshrc="vim ${HOME}/.files/.zshrc"
alias -g zprofile="vim $HOME/.zprofile"
alias -g compconf="vim ${HOME}/.config/compton.conf"
alias -g rcconf="vim ${HOME}/.config/ranger/rc.conf"
alias -g omzshrc="vim ${HOME}/.zshrc"
alias -g i3blocks="sudo vim -S /home/lautnern/.vimrc /etc/i3blocks.conf"
alias -g i3stat="sudo vim -S /home/lautnern/.vimrc ${HOME}/.config/i3status/config"
alias -g ncmpconf="vim ${HOME}/.ncmpcpp/config"
alias -g lifebarrc="vim ~/.lifebarrc"
alias -g polybarrc="vim ${HOME}/.config/polybar/config"
alias -g stconf="vim ${HOME}/builds/st-bloated/config.h && cd ~/builds/st-bloated/ && sudo make clean install"
alias -g mpdconf="vim $HOME/.config/mpd/mpd.conf"

## CUSTOM COMMANDS
alias -g cp="cp -i"
alias -g mv="mv -i"
#alias -g rm="rm -i"
alias -g la="ls -Al"
alias -g ll="ls -l"
alias -g lt="ls -clt"
alias -g lag="ls -Al | grep"
alias -g llg="ls -l | grep"
alias -g ltg="ls -clt | grep"
alias -g p="ping 8.8.8.8"
alias -g c="clear && sync"
alias -g inst="sudo pacman -S"
alias -g upd="sudo pacman -Syu"
alias -g remove="sudo pacman -Rs"
alias -g hib="sudo systemctl hibernate"
alias -g susp="sudo systemctl suspend"
alias -g cls="clear && ls"
alias -g ncmp="ncmpcpp -b ${HOME}/ncmpcpp/bindings"
alias -g sys="sudo systemctl"
alias -g psx="ps aux | grep"
alias -g sql="mysql -u root -p"
alias -g relo="source ${HOME}/.zshrc"
alias -g xlifebar="killall lifebar && lifebar &"
alias -g py="python3"
alias -g news="newsboat"
alias -g less="less -N"
alias -g rest="sudo shutdown -r now"
alias -g neo="clear && neofetch"
#alias -g vim="vim -w ${HOME}/.vim/scriptout"
alias -g r="ranger"
alias -g mount_usb="sudo mount /dev/sdb1 /mnt/usb" #mounting an usb stick when nothing else is connected
alias -g umount_usb="sudo umount /mnt/usb && sudo eject /dev/sdb" #same with umounting

## LONGER COMMANDS ##

alias -g todos="grep -rc \"TODO\" $HOME/scripts/* $HOME/projects/* | grep -v \":0\""
alias -g makepkg="time makepkg -si"

## SSH TARGETS
#alias -g raspserv="lautnern@192.168.1.250"
#alias -g macbook="lautnern@192.168.1.6"

##### PATH ##### should be set in .zshenv, where it is set now
#PATH=${PATH}":/usr/local/sbin/lifebar/:/usr/local/bin/neofetch/:${HOME}/Scripts/"

## MISC ##
#(wal -r -t)
