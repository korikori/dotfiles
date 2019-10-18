#!/bin/bash
#dotfiles2, now with gnu stow

#cd
cd ~/.dotfiles/

#update
git pull
git push

#re-stow
stow -R *
