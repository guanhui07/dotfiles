# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

#ZSH_THEME="robbyrussell"
#ZSH_THEME="haoomz"
ZSH_THEME="ys"
#ZSH_THEME="powerlevel9k/powerlevel9k"

random() {
    openssl rand -base64 512 | tr -dc 'a-zA-Z0-9' | fold -w ${1:-32} | head -n 1
}

strlen() {
    echo ${#1}
}


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
git
zsh-autosuggestions
zsh-syntax-highlighting
z
extract
web-search

)

source $ZSH/oh-my-zsh.sh


strlen() {
	echo ${#1}
}


base64_decode() {
	echo $1 | base64 --decode
}


function dnsrecords() {
	dig +nocmd $1 A +multiline +noall +answer;
	dig +nocmd $1 AAAA +multiline +noall +answer;
	dig +nocmd $1 NS +multiline +noall +answer;
	dig +nocmd $1 SOA +multiline +noall +answer;
	dig +nocmd $1 MX +multiline +noall +answer;
	dig +nocmd $1 TXT +multiline +noall +answer;
	dig +nocmd $1 DNSKEY +multiline +noall +answer;
	dig +nocmd $1 CAA +multiline +noall +answer;
}

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias grep="grep --color=auto"
alias cnpm="npm --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"
alias rm="trash"
alias cdw1="~/data1/work"
alias cdw2="~/data1/"
alias cdw='cd ~/sh/work_sh/'
alias cdh='cd ~/sh/work_sh/'
alias cds='cd ~/soft'
alias cdp='cd /Applications/ServBay/bin/'
alias cdphp='cd /Applications/ServBay/bin/'
alias vi='cot'
alias crontab="VIM_CRONTAB=true /usr/bin/crontab"
alias crontab1="EDITOR=/usr/bin/vim crontab -e"
#alias man='cheat'
alias man='man'
alias random_num='php /Users/yangminghui/sh/mac/php/random_num.php'
alias cman='cheat'
alias search='ag'
alias c="clear"
alias cl="clear"
alias json="python -mjson.tool"
alias ll='ls -alh'

alias ggg="git add -A && git commit && git push"
alias gp='git clean -f && git reset --hard && git pull'

alias tree="tree -C"

alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
#alias code="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias code1="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
alias cot='/Applications/CotEditor.app/Contents/SharedSupport/bin/cot'
alias sub="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias qq="open -a \"QQ\""
alias wechat="open -a \"Wechat\""
alias sublime="open -a \"Sublime Text\""
alias phpstorm="/Applications/PhpStorm.app/Contents/MacOS/phpstorm"
alias webstorm="/Applications/WebStorm.app/Contents/MacOS/webstorm"
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome -t"

alias finder="open ."

alias flushdns="dscacheutil -flushcache && echo \"DNS cache cleared\""

alias uuid1="uuidgen | tr '[:upper:]' '[:lower:]' | tr -d '\n' | pbcopy && pbpaste && echo"
alias uuid="openssl rand -base64 20"
alias random1="rig"

alias javac="javac -J-Dfile.encoding=utf8"

alias wget='wget -c '
alias getpass="openssl rand -base64 20"
alias password="openssl rand -base64 20"

alias cl='clear'


#-----------------
# 为 curl wget git 等设置代理
proxy () {
  export ALL_PROXY="socks5://127.0.0.1:32210"
  export all_proxy="socks5://127.0.0.1:32210"
}

# 取消代理
unproxy () {
  unset ALL_PROXY
  unset all_proxy
}




export HISTSIZE=30000
export SAVEHIST=$HISTSIZE
export HISTFILE=$HOME/.zsh_history
setopt hist_ignore_all_dups

setopt autocd
setopt correct



alias test_ssh="~/sh/work_sh/ycyh/test_217.sh"
alias www_ssh="~/sh/work_sh/ycyh/www.sh"
#  kugou001
alias my_server='~/sh/work_sh/ycyh/my_server.sh'

alias gs="git status"
alias gc="git commit -m "
alias gl="git log --graph --pretty"
alias glol="git log --graph --pretty"
#  git log --graph --pretty=oneline --abbrev-commit

alias artisan="php artisan"
alias migrate="php artisan migrate"
alias migration="php artisan make:migration"
alias schema="php artisan make:migration:schema"
alias makemigration="php artisan make:migration"
alias makecommand="php artisan make:command"
alias mkcommand="php artisan make:command"
alias controller="php artisan make:controller"
alias model="php artisan make:model"
alias console="php artisan make:command"
alias tinker="php artisan tinker"
alias routelist="php artisan route:list"
alias cacheclear="php artisan cache:clear"
#alias laravel="composer create-project laravel/laravel 5.6 "
export PATH="$HOME/.composer/vendor/bin/:$PATH"
alias port='port(){ lsof -i tcp:$@;};port $1'
alias cat="ccat"
alias cat1="cat"
alias pip="pip3"
alias nvim="~/soft/nvim/bin/nvim"

alias swoole-cli="/Users/mac/soft/swoole-cli"


export PATH="/usr/local/opt/curl/bin:$PATH"

defaults write com.apple.screencapture location -string "${HOME}/Desktop"

alias update='(
  /opt/homebrew/bin/brew update -v
  /opt/homebrew/bin/brew upgrade -v
  /opt/homebrew/bin/brew cleanup
)'




export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="/opt/homebrew/opt/luajit-openresty/bin:$PATH"
export PATH="/opt/homebrew/opt/mysql@8.0/bin:$PATH"
export PATH=" /opt/homebrew/opt/python@3.12/libexec/bin:$PATH"



# added by Servbay
export PATH=/Applications/ServBay/bin:/Applications/ServBay/sbin:/Applications/ServBay/script:$PATH


export OPENSSL_CFLAGS="-I/opt/homebrew/Cellar/openssl@3/3.3.2/include"
export OPENSSL_LIBS="-L/opt/homebrew/Cellar/openssl@3/3.3.2/lib -lssl -lcrypto"


export PATH="/opt/homebrew/opt/ffmpeg@6/bin:$PATH"

export LDFLAGS="-L/opt/homebrew/opt/ffmpeg@6/lib"
export CPPFLAGS="-I/opt/homebrew/opt/ffmpeg@6/include"


export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"

export PATH="/opt/homebrew/opt/mysql@8.0/bin:$PATH"

export LDFLAGS="-L/opt/homebrew/opt/mysql@8.0/lib"
export CPPFLAGS="-I/opt/homebrew/opt/mysql@8.0/include"

export PKG_CONFIG_PATH="/opt/homebrew/opt/mysql@8.0/lib/pkgconfig"


source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-history-substring-search/zsh-history-substring-search.zsh
  source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
fi



