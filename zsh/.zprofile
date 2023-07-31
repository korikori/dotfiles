#
# ~/.bash_profile
#

[[ -f ~/.zshrc ]] && . ~/.zshrc
#[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && [[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx -- vt1 &> /dev/null
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
PATH=$PATH:/home/kori/bin
export PATH
export QT_AUTO_SCREEN_SCALE_FACTOR=1
