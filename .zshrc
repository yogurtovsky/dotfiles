
### yogurt

export ZSH="$HOME/.oh-my-zsh" 
ZSH_THEME='powerlevel10k/powerlevel10k'


source $ZSH/oh-my-zsh.sh

### EXPORTS 

export TERM="alacritty"

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

### PATH

if [ -d "$HOME/.bin" ] ;
	then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/Applications" ] ;
  then PATH="$HOME/Applications:$PATH"
fi

plugins=(git)

## ALIAS

alias ls='exa -al --color=always --group-directories-first'
alias pacsyu='sudo pacman -Syu'
alias parsyu='paru -Syu --noconfirm'
alias cleanup='sudo pacman -Rns (pacman -Qtdq)'               # remove orphaned packages

# get fastest pacman mirrors
alias mirror='sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist'
alias mirrord='sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist'
alias mirrors='sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist'
alias mirrora='sudo reflector --latest 50 --numbert 20 --sort score --save /etc/pacman.d/mirrorlist'

# colorize grep
alias rg='rg --color=auto'
alias rg='rg --color=auto --hidden' # search in hidden files too

# source oh my zsh directory

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
alias dotconfig='/usr/bin/git --git-dir=/home/yogurt/dotfiles --work-tree=/home/yogurt'
