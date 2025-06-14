# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

### VARIABLES ###

# Default programs and directories
EDITOR="nvim"
FILE_MANAGER="thunar"
export TERMINAL="alacritty"
SU="sudo"

# PS1 (pretty bash prompt) 
export PS1="\[\e[1m\[\e[38;5;245m\][\[\e[38;5;252m\]\u\[\e[38;5;245m\]@\[\e[38;5;252m\]\h \[\e[38;5;245m\]\W\[\e[38;5;245m\]]\[\e[38;5;245m\]\$ \[\e[m\]"

### ALIASES ### 

# Systemd aliases
alias SS="${SU} systemctl"
alias TT="${SU} timedatectl"

# Aliases
alias g="git"
alias r="${FILE_MANAGER}"
alias sr="${SU} ${FILE_MANAGER}"
alias ss="${SU} shutdown -h now"
alias srb="${SU} reboot"
alias v="${EDITOR}"
alias sv="${SU} ${EDITOR}"
alias k="killall"
alias mk="mkdir -p"
alias kr="sudo pacman-key --refresh-keys"

# Shortcutting
alias src="cd ${LOCAL}/src/" # ${LOCAL} is set in .xinitrc, in case you're wondering
alias bin="cd ${LOCAL}/bin/"

# Colors
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias p="${SU} pacman --color=auto"

