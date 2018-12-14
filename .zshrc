# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="ys"
#ZSH_THEME="tonotdo"
#ZSH_THEME="dst"
#ZSH_THEME="cypher"
#ZSH_THEME="half-life"
#ZSH_THEME="random"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration
export PYTHONIOENCODING=utf-8

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#[[ -sbrew --prefix/etc/autojump.sh ]] && brew --prefix/etc/autojump.sh
#eval $(thefuck --alias)

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting


plugins=(git subl ruby autojump osx mvn gradle)

[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

#alias for cnpm
alias cnpm="npm --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"

eval "$(pyenv init -)"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

alias cdw='cd ~/sh/work_sh/'
alias cdh='cd ~/sh/work_sh/'
alias cdw1='cd /data1/work/weikang/python'
alias cdh='cd ~/sh/work_sh/'

alias vi='cot'

alias crontab="VIM_CRONTAB=true /usr/bin/crontab"
alias nginx=' /usr/local/Cellar/openresty/1.11.2.1/nginx/sbin/nginx'
alias resty='/opt/openresty/bin/resty'
#alias man='cheat'
alias cman='cheat'
alias c="clear"



alias vi='cot'
alias ll='ls -alh'
alias la="ls -ha"
alias lla="ls -lha"
alias iftop='sudo /pan_d/soft/iftop-0.17/iftop'

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

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
alias sub="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias atom="/Users/yangminghui/Desktop/mysoft/Atom.app/Contents/MacOS/Atom"
alias chromeinum ="/Users/yangminghui/Desktop/mysoft/Chromium.app/Contents/MacOS/Chromium"
alias phpstorm="/Applications/PhpStorm.app/Contents/MacOS/phpstorm"
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome -t"
alias mou="/Applications/Mou.app/Contents/MacOS/Mou"
alias securecrt="/Applications/SecureCRT.app/Contents/MacOS/SecureCRT"
alias finder="open ."
alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
alias hosts="code /etc/hosts"
alias aliases="code ~/.aliases"
alias tree="tree -C"
alias flushdns="dscacheutil -flushcache && echo \"DNS cache cleared\""
alias c="composer"
# Generate a random uuid
alias uuid="uuidgen | tr '[:upper:]' '[:lower:]' | tr -d '\n' | pbcopy && pbpaste && echo"
# OS X has no `md5sum`, so use `md5` as a fallback
command -v md5sum > /dev/null || alias md5sum="md5"

# OS X has no `sha1sum`, so use `shasum` as a fallback
command -v sha1sum > /dev/null || alias sha1sum="shasum"

# Recursively delete `.DS_Store` files
alias dotclean="find . -type f -name '*.DS_Store' -ls -delete"

# Generate a random string
random() {
	openssl rand -base64 512 | tr -dc 'a-zA-Z0-9' | fold -w ${1:-32} | head -n 1
}

# Get string length of first argument
strlen() {
	echo ${#1}
}

# Base64 decode strings
base64_decode() {
	echo $1 | base64 --decode
}

# Get dns records for a host
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




alias ssh="TERM=xterm-256color ssh"

case "$(uname)" in
    Darwin)
        # color ls output
        export CLICOLOR=1
        alias l="ls -CF"
        ;;
    Linux)
        alias ls="ls --color=auto"
        alias l="ls -CF --hide=*.pyc"
        ;;
    *)
esac


fpath=(/usr/local/share/zsh/site-functions /usr/local/share/zsh-completions $fpath)

autoload -U colors && colors
autoload -U zutil
autoload -U complist
autoload -U compinit && compinit
autoload -U promptinit && promptinit

zstyle ':completion:*' completer _complete _correct _complete:foo
zstyle ':completion:*:complete:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*:foo:*' matcher-list 'm:{a-zA-Z}={A-Za-z} r:|[-_./]=* r:|=*'

# Deprecated Golang's official Zsh completion. Will be gone in Go 1.4
#source /usr/local/share/zsh/site-functions/_go


export HISTSIZE=10000
export SAVEHIST=$HISTSIZE
export HISTFILE=$HOME/.zsh_history
setopt hist_ignore_all_dups
#setopt share_history

setopt autocd
setopt correct
#setopt correctall


readonly GIT_BRANCH_SYMBOL='⑂ '
readonly GIT_BRANCH_CHANGED_SYMBOL='+'
readonly GIT_NEED_PUSH_SYMBOL='⇡'
readonly GIT_NEED_PULL_SYMBOL='⇣'

readonly PS_SYMBOL_DARWIN=''
readonly PS_SYMBOL_LINUX='$'
readonly PS_SYMBOL_OTHER='%'

# Assign prompt symbol based on OS
case "$(uname)" in
    Darwin)
        readonly PS_SYMBOL=$PS_SYMBOL_DARWIN
        ;;
    Linux)
        readonly PS_SYMBOL=$PS_SYMBOL_LINUX
        ;;
    *)
        readonly PS_SYMBOL=$PS_SYMBOL_OTHER
        ;;
esac

__git_info() {
    [ -x "$(which git)" ] || return    # git not found

    # get current branch name or short SHA1 hash for detached head
    local branch="$(git symbolic-ref --short HEAD 2>/dev/null || git describe --tags --always 2>/dev/null)"
    [ -n "$branch" ] || return  # git branch not found

    local marks

    # branch is modified?
    [ -n "$(git status --porcelain)" ] && marks+=" $GIT_BRANCH_CHANGED_SYMBOL"

    # how many commits local branch is ahead/behind of remote?
    local stat="$(git status --porcelain --branch | grep '^##' | grep -o '\[.\+\]$')"
    local aheadN="$(echo $stat | grep -o 'ahead \d\+' | grep -o '\d\+')"
    local behindN="$(echo $stat | grep -o 'behind \d\+' | grep -o '\d\+')"
    [ -n "$aheadN" ] && marks+=" $GIT_NEED_PUSH_SYMBOL$aheadN"
    [ -n "$behindN" ] && marks+=" $GIT_NEED_PULL_SYMBOL$behindN"

    # print the git branch segment without a trailing newline
    printf " $GIT_BRANCH_SYMBOL$branch$marks "
}


__config_prompt() {
    # Color coding based on exit code of the previous command.  Note this must
    # be dealt with in the beginning of the function, otherwise the $? will not
    # match the right command executed.
    if [ $? -eq 0 ]
    then
        local EXIT="%{$bg[green]%}"
    else
        local EXIT="%{$bg[red]%}"
    fi

    local RESET="%{${reset_color}%}"
    local SYMBOL="%{$fg[white]%}$EXIT $PS_SYMBOL $RESET"
    local GIT="%{$bg[blue]%}%{$fg[white]%}$(__git_info)$RESET"
    local PATH="%{$bg[black]%}%{$fg[white]%} %~ $RESET"
    #local TIME="%{$fg[green]%}$(/bin/date -u '+%Y-%m-%d %H:%M:%S')$RESET"
    local TIME="%{$fg[green]%}$(/bin/date  '+%Y-%m-%d %H:%M:%S')"

    #PROMPT="$PATH$GIT$SYMBOL "
    #RPROMPT="$TIME"
}

precmd() {
    __config_prompt
}

preexec() {
}


source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters


bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

plugins=(zsh-autosuggestions)

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

alias gs="git status"
alias gc="git commit -m "
alias gp="git push"
alias gl="git log --graph --pretty"
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
alias cat=ccat
export PATH="/usr/local/opt/curl/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Load dotfiles
for file in ~/.{path,exports,aliases,functions,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;


#https://github.com/jenssegers/dotfiles/blob/master/.aliases
#
#

