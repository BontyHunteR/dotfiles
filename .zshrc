source /usr/share/zsh/share/antigen.zsh

# plugins
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle jeffreytse/zsh-vi-mode
# theme
# finish antigen setup
antigen apply
# zsh config
alias cat='bat --paging=never'
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
# change ls to exa
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'
alias weather='curl wttr.in'
alias sudo='doas'
alias sudoedit='doas rnano'











# color script
colorscript random
eval "$(starship init zsh)"
