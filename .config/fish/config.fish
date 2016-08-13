alias bwmconf 'vim ~/.config/bspwm/bspwmrc'
alias shdconf 'vim ~/.config/sxhkd/sxhkdrc'
alias pac 'pacaur' 
alias ccat 'pygmentize -g'
alias screenshot "scrot ~/Images/PrintScreen_(date '+%a-%b-%d-%T').jpg"
alias ipaddr "ip addr | pygmentize -g"
function lswcn
    #list all bspc wm -d classNames
    bspc wm -d | grep -o '"className":"[-a-zA-Z0-9_]*"' | cut -d: -f2 | cut -b2- |cut -d'"' -f1
end

# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/home/martialh/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish
