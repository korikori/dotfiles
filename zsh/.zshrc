# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/share/gem/ruby/3.0.0/bin:$PATH
export EDITOR=nano

# Path to your oh-my-zsh installation.
  export ZSH=/home/kori/.oh-my-zsh
  
# sublime nano
  export EDITOR="$(if [[ -n $DISPLAY ]]; then echo 'subl'; else echo 'nano'; fi)"

  export ZSH_FZF_HISTORY_SEARCH_EVENT_NUMBERS=0

# Set name of the theme to load. Optionally, if you set this to "random"
ZSH_THEME="agnoster"
# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"
DISABLE_UPDATE_PROMPT=true

plugins=(git zsh-autosuggestions zsh-fzf-history-search)
source $ZSH/oh-my-zsh.sh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#2aa198"

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# # export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias pacnam="yay -Pw; sudo pacman -Syy archlinux-keyring pacman --needed; yay -Syu; sudo paccache -rk2; pass git pull; pass git push; zsh ~/bin/cyr.sh; omz update; "

bak () {
  cp $1{,.bak}
}

#completion, prompt
autoload -Uz compinit promptinit
compinit
promptinit
zstyle ':completion:*' menu select

#syntaxhighlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
