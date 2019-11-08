#!/bin/bash
#dotfiles2, now with gnu stow

#cd
cd ~/.dotfiles/

#update
git pull
git push

#initial stow
stow *

#re-stow
#stow -R *
