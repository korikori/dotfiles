set PATH /home/kori/bin $PATH
set EDITOR nano
set TERM xterm-256color

# start X at login
if status --is-login
    if test -z "$DISPLAY" -a $XDG_VTNR -eq 1
        exec startx -- -keeptty
    end
end
set -g theme_title_use_abbreviated_path no
set -g theme_color_scheme solarized
set -g theme_title_display_process yes
