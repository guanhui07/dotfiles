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
alias kill1="lsof -i:18201 | awk -F ' ' '{print $2}' | grep -v 'PID' | xargs kill -9"
alias kill2="lsof -i:18202 | awk -F ' ' '{print $2}' | grep -v 'PID' | xargs kill -9"
alias echo1="ps -ef | grep swoft | grep master | grep yangmin | awk -F ' ' '{print $2}'  | xargs echo"

#lsof -i tcp:9501 | grep -v PID | awk -F ' ' '{print $2}' | xargs kill
alias test_port="lsof -i :18201"
alias ps1="ps -ef | grep swoft | grep master | grep yangmin"
alias cdn="cd /etc/nginx/conf.d/"
alias cdlog="cd /var/log/nginx/"
alias ..="cd .."
alias ...="cd ../.."
alias clean="git clean -f && git reset --hard"
alias gp="git clean -f && git reset --hard && git pull"



export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
