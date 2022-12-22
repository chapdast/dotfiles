
ZSH_THEME="linuxonly" 
#"agnoster" #"gnzh" #"jonathan"
#"robbyrussell"
#"steeef"
#"fletcherm"
#"amuse"
#"linuxonly"
#"arrow" #"linuxonly" #"robbyrussell"

plugins=(
    git
    golang
    web-search
)

# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export ZSH="/home/$USER/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
alias zshrc="nvim ~/.zshrc"

# ANDROID
export SDK_TEST_BASE_URL="https://android.bardia.tech/repository/"


# GO ENVIRONMENT
export GO111MODULE=on
export GOPATH="$HOME/go"
export GOROOT="/usr/lib/golang"
export GOBIN="$HOME/go/bin" #:$SSD_PATH/bin"
export GOROOTBIN="$GOROOT/bin/"
export CGO_CFLAGS="-g -O2 -Wno-return-local-addr"
export GOPROXY="https://goproxy.io,direct" 
export GOPRIVATE="github.com/dolphinfms/*,go.fleet.io/*,go.car.io/*"
export GONOPROXY="none"

# FLUTTER ENVIRONMENT
export FLUTTER="/home/$USER/development/flutter/bin"
export DART_HOME="/home/$USER/development/dart-sdk/bin"
export PUB_HOME="$HOME/.pub-cache/bin"

# APPLICATION ENVIRONMENT
export RARPATH="/opt/rar"
export GRPCURL="/opt/grpcurl/grpcurl"
export NODEPATH="/opt/node/bin"

# NPM ENVIRONMENT
export NPM_HOME="/home/$USER/.npm-global"

# MISC ENVIRONMENT
export LOCAL_BIN="/home/$USER/.local/bin/"
export EDITOR="nvim"
export HISTTIMEFORMAT="%d/%m/%y %T"

export DOOMEMACS_HOME="/home/$USER/.emacs.d/bin"

# SysControl bin
export SYSCTL="/home/$USER/sysctl"

export TEL_HOME="/opt/Telegram"

# PATH
export PATH="$TEL_HOME:$DOOMEMACS_HOME:$SYSCTL:$LOCAL_BIN:$NPM_HOME/bin:$GOROOT:$NODEPATH:$RARPATH:$GOPATH:$GOROOT:$GOBIN:$GOROOTBIN:$FLUTTER:$DART_HOME:$PUB_HOME:$PATH"
# export PATH="$(brew --prefix llvm)/bin:${PATH}"

export HDD_SECURE="/mnt/secure"
export WSPC_PRJS="$HDD_SECURE/projects"
export WSPC_DOLPHIN="$HDD_SECURE/dolphin/"
export CDPATH="$HDD_SECURE:$WSPC_PRJS:$WSPC_DOLPHIN"

# ALIASES
alias ls="ls --color"
alias ll="ls -lA --color"
alias pi="ping 8.8.8.8"
alias open="xdg-open $@"
alias tgo="open -a TextEdit"
alias smd="sudo mongod --dbpath /home/$USER/MongoData/"
alias mf="make -f Makefile.local $@"
alias cbg="nitrogen --random --set-zoom-fill $HOME/Pictures"

# DOCKER IMAGES
alias pgmain="docker run -d --name pg-main -e POSTGRES_PASSWORD=$USER -p 5432:5432 -d postgres"

alias redismain="docker run -d --name redis-main -p 6379:6379 -d redis "
alias chmain="docker run -d --name clickhouse-main --ulimit nofile=262144:262144 -p 8123:8123 -p 9000:9000 yandex/clickhouse-server"
alias natsmain="docker run -d --name nats-main -p4222:4222 -p 8222:8222 -p 6222:6222 -d nats"

alias ph='export http_proxy="127.0.0.1:8889"; export https_proxy="127.0.0.1:8889"'


#JIRI
export JIRI_ROOT=${JIRI_ROOT:=${HOME}/Public/vanadium}
export VANADIUM_RELEASE=${JIRI_ROOT}/release/go

# DOLPHIN ENVIRONMENT
# source $HOME/.dolphin.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias emacs="emacsclient -c -a \"emacs\""
alias tbor="cd /opt/tor-browser_en-US && ./start-tor-browser.desktop"
alias grep="grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox,.angular}"

echo "\e[31m💀\e[32m💀\e[33m💀\e[34m💀\e[35m💀\e[36m💀" 

source "$HOME/.cargo/env"
source "$HOME/vpd.sh"
