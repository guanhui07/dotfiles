  [[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
  #eval "$(thefuck --alias)"
#http://localhost:8080/   /Library/java/apache-tomcat-8.0.35/bin/start.sh 启动comcat
#/Library/Java/tomcat
  export ARCHFLAGS="-arch x86_64"
JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.8.0_72.jdk/Contents/Home'

#go
export GOROOT='/usr/local/Cellar/go/1.5.3'
export GOPATH='~/golib:~/goproject'
export GOBIN='~/gobin'

#PATH
  export PATH="$JAVA_HOME/bin:/usr/local/cellar/bin:/opt/openresty/nginx/sbin/:/usr/local/bin:/usr/bin:/bin:/bin:/usr/sbin:/sbin"
  export PATH="$PATH:$GOROOT/bin"
  export PATH="$PATH:/usr/local/lib/python3.6/site-packages"
CLASSPATH=$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar:.
export JAVA_HOME
export CLASSPATH
  test -f ~/.bashrc && source ~/.bashrc

export xx='/workplace/rails/agile_web_dev_rails/dept'
alias nginx='/opt/openresty/nginx/sbin/nginx'
alias pip='/usr/local/bin/pip'
alias mysql='/usr/local/opt/mysql55/bin/mysql'
alias free='~/sh/free.sh'
alias grep='grep -v grep | grep'
alias man='cheat'
export HISTCONTROL=erasedups
export HISTSIZE=2000
#cd $xx

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source ~/.profile

CLICOLOR=1
LSCOLORS=gxfxcxdxbxegedabagacad
exportPS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ '



alias subl="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"
alias nano="subl"
export EDITOR="vim"
alias cls='clear'
alias ll='ls -l'
alias la='ls -a'
alias vi='vim'
alias javac="javac -J-Dfile.encoding=utf8"
alias grep="grep --color=auto"
alias -s html=subl   # 在命令行直接输入后缀为 html 的文件名，会在 TextMate 中打开
alias -s rb=subl     # 在命令行直接输入 ruby 文件，会在 TextMate 中打开
alias -s py=vi       # 在命令行直接输入 python 文件，会用 vim 中打开，以下类似
alias -s js=vi
alias -s c=vi
alias -s java=vi
alias -s txt=vi
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
#alias -s random='rig'



export GIT_MERGE_AUTOEDIT=no


alias c="clear"
alias desktop='cd ~/desktop'
alias de='cd ~/desktop'
alias cat='ccat'
alias crontab="VIM_CRONTAB=true crontab"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

alias cdw='cd ~/sh/work_sh/'
alias cdh='cd ~/sh/work_sh/'

alias vi='cot'
alias ll='ls -al'
alias iftop='sudo /pan_d/soft/iftop-0.17/iftop'

#####centos  /etc/profile  ~/.bash_profile
#export REDIS_HOME=/usr/local/redis/
#export PATH=${JAVA_HOME}/bin:${REDIS_HOME}/bin:$PATH

#### echo 'export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"' >> ~/.zshrc

export PATH="$HOME/.cargo/bin:$PATH"
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
