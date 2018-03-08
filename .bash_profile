#
# ~/.bash_profile
#
function mkdircd () { mkdir -p "$@" && eval cd
"\"\$$#\""; }
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
exec startx
#xset b off # set bell off
else
echo "loadkey in tty"
    #sudo loadkeys ~/.config/.keystrings
fi

#[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -f ~/.zshrc ]] && . ~/.zshrc
