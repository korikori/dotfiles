#!/bin/bash
termcmd="terminator -e" 
browsercmd="firefox --profile /home/kori/.mozilla/firefox/*.casual"
cmd="$(dmenu_path | dmenu -fn 'Hack-8' -b -nb '#151617' -nf '#d8d8d8' -sb '#d8d8d8' -sf '#151617')" 
case $cmd in 
	\>* ) ${browsercmd} "https://duckduckgo.com/?q=$(echo $cmd | sed "s/>//")";; 
	*\! ) ${termcmd} "$(printf "%s" "${cmd}" | cut -d'!' -f1)";; 
	* ) ${cmd} ;; 
esac 
exit
