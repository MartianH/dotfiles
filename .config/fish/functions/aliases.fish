#!/bin/fish
alias aurcf 'aur-comment-fetch'
alias bwmconf 'nvim ~/.config/bspwm/bspwmrc'
alias ccat 'pygmentize -g'
alias fishconf 'nvim .config/fish/config.fish'
alias pac 'pacaur' 
alias shdconf 'nvim ~/.config/sxhkd/sxhkdrc'
alias screenshot "scrot ~/Images/PrintScreen_(date '+%a-%b-%d-%T').jpg"
alias ipaddr "ip addr | pygmentize -g"
function lswcn
    #list all bspc wm -d classNames
    bspc wm -d | grep -o '"className":"[-a-zA-Z0-9_]*"' | cut -d: -f2 | cut -b2- |cut -d'"' -f1
end

alias sys-restart 'systemctl restart'
alias sys-status 'systemctl status'
alias sys-start 'systemctl start'
alias sys-stop 'systemctl stop'
alias sys-enable 'systemctl enable'
alias sys-disable 'systemctl disable'


