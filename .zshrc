# 環境変数
export LANG=ja_JP.UTF-8


autoload -Uz colors
colors

# History
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

eval "$(rbenv init -)"

# Path
export PATH=/usr/local/bin:$PATH
setopt nonomatch

# Ruby
export PATH=$HOME/.rbenv/bin:$PATH

# Git
export PATH=/usr/local/Cellar/git/2.5.0/bin:$PATH

#go
export GOPATH=$HOME/golang
export PATH=$HOME/golang/bin:$PATH

#python
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Users/axis/Documents/Library/cocos2d-x-3.10/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable COCOS_X_ROOT for cocos2d-x
export COCOS_X_ROOT=/Users/axis/Documents/Library
export PATH=$COCOS_X_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT=/Users/axis/Documents/Library/cocos2d-x-3.10/templates
export PATH=$COCOS_TEMPLATES_ROOT:$PATH

#postgresql
export PGDATA=/usr/local/var/postgres

autoload -U compinit
compinit -u

# List
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

RPROMPT="%{${reset_color}%}"

autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT=$RPROMPT'${vcs_info_msg_0_}'
PROMPT="%{${fg[green]}%}[axis]▶%{${reset_color}%} "


alias ls="ls -GF"
alias gls="gls --color"
alias la='ls -la'

# Vi like
bindkey -v

# Editer
export EDITOR=/usr/local/bin/vim


####### option
setopt auto_cd
setopt auto_menu
setopt auto_param_keys
setopt auto_param_slash
setopt auto_pushd
setopt extended_glob
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt ignore_eof
setopt interactive_comments
setopt magic_equal_subst
setopt mark_dirs
setopt no_beep
setopt no_flow_control
setopt prompt_subst
setopt print_eight_bit
setopt pushd_ignore_dups
setopt share_history
setopt prompt_subst

zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'


# Alias

alias rm='rm -i'
alias pull='git pull'
alias push='git push'
alias st='git status'
alias stt='git status -uno'
alias g='git'
alias r='rails'
alias rs='rails s'
alias git log='git log --graph --all --format="%x09%an%x09%h %d %s"'


alias be='bundle exec'
alias rake='bundle exec rake'
alias rspec='bundle exec rspec'
alias be='bundle exec'
alias bi='bundle install --path vendor/bundle --jobs=4'
alias rdc='rake db:create'
alias rdm='rake db:migrate'
alias rdmt='rake db:migrate RAILS_ENV=test'
alias rdd='rake db:drop'
alias rds='rake db:seed'
alias rdr='rake db:reset'
alias rdmr='rake db:migrate:reset'
alias rr='spring rake routes'
alias rs='rails s'
alias rs4='rails s -p 4000'
alias rs5='rails s -p 5000'
alias rc='rails c'

alias gi='git init'
alias gd='git diff'
alias gst='git status -b'
alias gb='git branch'
alias gbd='git branch -d'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcm='git checkout master'
alias glg='git log --graph --name-status'
alias gsta='git stash'
alias gstal='git stash list'
alias rgsta='git stash apply'
alias gr='git reset HEAD'
alias grhch='git reset --hard HEAD^'
alias grhih='git reset --hard HEAD'
alias grsch='git reset --soft HEAD^'
alias ga='git add'
alias gaa='git add .'
alias gc='git commit'
alias gcmsg='git commit -m'
alias gcam='git commit --amend'
alias gl='git pull origin B'
alias gp='git push origin B'
alias gpom='git push origin master'
alias gphm='git push heroku master'
alias glom='git pull origin master'
alias gce='git commit --allow-empty -m "make pull request"'

alias t='tmux'
alias tl='tmux ls'
alias ta='tmux a -t'
alias tr='tmux rename'
alias tk='tmux kill-session '


alias p3='python3'
alias p3rs='python3 manage.py runserver'
alias p3mm='python3 manage.py makemigrations'
alias p3m='python3 manage.py migrate'

alias mweb='cd /Users/axis/Documents/web'
alias mgame='cd /Users/axis/Documents/game'
alias mapp='cd /Users/axis/Documents/app'

alias cpd='bundle exec cap production deploy'
alias cpr='bundle exec cap production unicon:restart'
