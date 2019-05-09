export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
#export http_proxy=socks5://127.0.0.1:1080


alias server='python -m SimpleHTTPServer' 
alias port='port(){ lsof -i tcp:$@;};port $1'


#alias c="clear"
alias desktop='cd ~/desktop'
alias de='cd ~/desktop'
alias cat='ccat'
alias ll='ls -al'

export PATH="/usr/local/Cellar/git/2.7.0/bin/:$PATH"
#/usr/local/Cellar/go/1.10.2/bin

#install path
export GOPATH="/usr/local/Cellar/go/1.10.2/"
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN/bin
#export GOROOT=''

	alias ..="cd .."
    alias ...="cd ../.."
    alias ....="cd ../../.."
    alias ll="ls -lh"
    alias la="ls -ha"
    alias lla="ls -lha"
    alias grep="grep --color=auto"
    alias egrep="egrep --color=auto"
    alias g="git add -A"
    alias gg="git add -A && git commit"
    alias ggg="git add -A && git commit && git push"
    alias ipy="ipython"
    alias bpy="bpython"
    alias py="python"
    alias tree="tree -C"
    alias dkr=docker
    alias b2d=boot2docker-cli
    alias vbm=VBoxManage
    alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport"
    alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
    alias ssh="TERM=xterm-256color ssh"




export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
