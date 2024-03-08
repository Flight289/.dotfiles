# zplug {{{
source ~/.zplug/init.zsh
zplug 'zplug/zplug', hook-build:'zplub --self-manage'

zplug "mafredri/zsh-async"

zplug "chrissicool/zsh-256color"

zplug "zsh-users/zsh-syntax-highlighting"

zplug "zsh-users/zsh-completions"
# }}}
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

export PIP_INSTALL="/home/flight/.local/"
export PATH="$PIP_INSTALL/bin:$PATH"

export DENO_INSTALL="/home/flight/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

export CARGO_INSTALL="/home/flight/.cargo"
export PATH="$CARGO_INSTALL/bin:$PATH"

export COMMANDS="/home/flight/.command/"
export PATH="$COMMANDS:$PATH"

export PKG_CONFIG_PATH=~/libs/opencv-2.4.13.4/release/installed/lib/pkgconfig:$PKG_CONFIG_PATH
export LD_LIBRARY_PATH=~/libs/opencv-2.4.13.4/release/installed/lib:$LD_LIBRARY_PATH

eval "$(almel init zsh --async)"

# eval "$(pyenv init --path)"

alias cp='cp -r'

alias rm='rm -rf'

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

ssid=`iwgetid -r`
proxy="202.211.8.4:8080"
if [ $ssid ]; then
    if [ $ssid = "INCT-STU2" ]; then
        export http_proxy="http://$proxy"
        export htps_proxy=$http_proxy
        export ftp_proxy=$http_proxy
        export no_proxy="127.0.0.1, localhost"
    fi
fi
