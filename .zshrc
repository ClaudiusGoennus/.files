# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory extendedglob
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/nlautner/.zshrc'

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
#PS1=$' ## %~\n ### '

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
alias -g omzshrc="vim ${HOME}/.zshrc"
alias -g i3blocks="sudo vim /etc/i3blocks.conf"
alias -g i3status="sudo vim /etc/i3status.conf"
alias -g ncmpconf="vim ${HOME}/.ncmpcpp/config"
alias -g lifebarrc="vim ~/.lifebarrc"
alias -g polybarrc="vim ${HOME}/.config/polybar/config"

## ALTERED COMMANDS
alias -g cp="cp -i"
alias -g mv="mv -i"
#alias -g rm="rm -i"
alias -g c="clear && sync"
alias -g inst="sudo pacman -S"
alias -g upd="sudo pacman -Syu"
alias -g remove="sudo pacman -Rs"
alias -g hib="sudo systemctl hibernate"
alias -g susp="sudo systemctl suspend"
alias -g cls="clear && ls"
alias -g ncmp="ncmpcpp"
alias -g sys="sudo systemctl"
alias -g psx="ps aux | grep"
alias -g sql="mysql -u root -p"
alias -g relo="source ${HOME}/.zshrc"
alias -g xlifebar="killall lifebar && lifebar &"
alias -g py="python3"
alias -g less="less -N"
alias -g rest="sudo shutdown -r now"
#alias -g vim="vim -w ${HOME}/.vim/scriptout"
alias -g r="rifle"

## SSH TARGETS
alias -g raspserv="nlautner@192.168.1.250"
alias -g macbook="nlautner@192.168.1.6"

##### PATH ##### should be set in .zshenv, where it is set now
#PATH=${PATH}":/usr/local/sbin/lifebar/:/usr/local/bin/neofetch/:${HOME}/Scripts/"

## MISC ##
(wal -r -t)
