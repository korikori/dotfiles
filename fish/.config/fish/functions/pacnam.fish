function pacnam
	yay -Pw; sudo pacman -Syy archlinux-keyring pacman --needed; yay -Su; sudo paccache -rk2; pass git pull; pass git push; fish ~/bin/cyr.sh;
end	
