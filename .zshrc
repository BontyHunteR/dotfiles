source /usr/share/zsh/share/antigen.zsh

# plugins
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle jeffreytse/zsh-vi-mode
antigen bundle git
# theme
# finish antigen setup
antigen apply
# zsh config
alias cat='bat --paging=never'
alias ls='exa -al --color=always --group-directories-first' # changes ls to exa
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'
alias cp="cp -i" # -i flag asks to confirm changes
alias mv='mv -i'
alias rm='rm -i'
alias du='dust'
alias weather='curl wttr.in' 
alias sudo='doas'
alias pacs="pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S"
alias pacr="pacman -Qq | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -Rns"
alias open='fzf | xargs xdg-open'
alias calc='qalc' # interactive calculator
alias .='cd ..'
alias ..='cd ../..'
alias ....='cd ../../../..'
alias .....='cd ../../../../..'
alias listen='ytfzf -m' # Play a youtube video with just audio
alias play='ytfzf' # Play a youtube video
alias copy='wl-copy'
alias paste='wl-paste'
alias config='/usr/bin/git --git-dir=/home/bonter/dotfiles --work-tree=/home/bonter' # Adding stuff to dotfiles git repo
# Export stuff
export  MANPAGER="sh -c 'col -bx | bat -l man -p'"



# color script
colorscript random
eval "$(starship init zsh)"
