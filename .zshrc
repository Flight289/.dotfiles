zmodload zsh/datetime

autoload -Uz colors
colors

autoload -Uz compinit
compinit

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

zstyle ':completion:*' ignore-parets paret pwd ..

zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                    /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin /opt

zstyle ':completion:*:processes' command 'ps x -o pid,s,args'


HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVESIZE=1000000

setopt print_eight_bit

setopt no_beep

setopt no_flow_control
setopt ignore_eof

setopt interactive_comments

setopt share_history

setopt hist_ignore_space

setopt hist_reduce_blanks

setopt extended_glob

bindkey '^R' history-incremental-pattern-search-backward

#export TERM=xterm-color256

export PATH="/opt:$PATH"

export DENO_INSTALL="/home/flight/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

export CARGO_INSTALL="/home/flight/.cargo"
export PATH="$CARGO_INSTALL/bin:$PATH"

export COMMANDS="/home/flight/.command/"
export PATH="$COMMANDS:$PATH"

eval "$(almel init zsh)"

alias vi=vim

alias vim=nvim

alias l='exa --icons'

alias ls='exa -a --icons'

alias lt='exa -T --icons'

alias ll='exa -l --icons'

alias la='exa -a -l --icons'

alias lsa='exa -a -T -L 3 -l --icons'

alias getmyip='curl inet-ip.info'

alias take='(){ mkdir $1 && cd $1 }'
