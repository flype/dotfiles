# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="gentoo"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(rails git github textmate ruby brew gem rails3 bundler zsh-syntax-highlighting gas git-flow vagrant vi-mode)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/sbin:/Users/talavera/.rvm/gems/ruby-1.9.2-p0/bin:/Users/talavera/.rvm/gems/ruby-1.9.2-p0@global/bin:/Users/talavera/.rvm/rubies/ruby-1.9.2-p0/bin:/Users/talavera/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin

# scala path
export PATH="/Users/talavera/code/scala/bin:$PATH"

# This loads RVM into a shell session.
unsetopt auto_name_dirs 
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  

# my alias
alias vim='mvim -v'
alias vi='mvim -v'
alias gitx="open -b nl.frim.GitX"
alias gllh='gll `git tag | tail -n 1`..HEAD'
alias rm_orig="find . -iname '*.orig' -exec rm '{}' ';'"

# peertransfer
alias core='cd ~/code/peertransfer/core'
alias dashboard='cd ~/code/peertransfer/dashboards'
alias payschool='cd ~/code/peertransfer/payschool'
alias cookbook='cd ~/code/peertransfer/cookbooks/'
alias baywatch='cd ~/code/peertransfer/baywatch'
alias exchange='cd ~/code/peertransfer/exchange'
alias hedge_oanda='cd ~/code/peertransfer/hedge_oanda'
alias health_manager='cd ~/code/peertransfer/health_manager'
alias messages='cd ~/code/peertransfer/messages'
alias operations='cd ~/code/peertransfer/operations'
alias webhook='cd ~/code/peertransfer/webhook'
alias salesforce='cd ~/code/peertransfer/salesforce'
alias filer='cd ~/code/peertransfer/filer'
alias infrastructure='cd ~/code/peertransfer/infrastructure'
alias full_stack='cd ~/code/peertransfer/full_stack'

alias s_development="core && tmux new -n 'development solo server engineyard' 'ey ssh -e development'\; attach"
alias s_staging="core && tmux new -n 'staging app_master server engineyard' 'ey ssh -e staging_tiny'\; attach"
alias s_staging_utilities="core && tmux new -n 'staging utilities server engineyard' 'ey ssh -e staging_tiny --utilities'\; attach"
alias s_staging_db="core && tmux new -n 'staging db_master server engineyard' 'ey ssh -e staging_tiny --db-master'\; attach"

alias s_production="core && tmux new -n 'production app_master server engineyard' 'ey ssh -e production_2'\; attach"
alias s_production_utilities="core && tmux new -n 'production utilities server engineyard' 'ey ssh -e production_2 --utilities'\; attach"
alias s_production_db="core && tmux new -n 'production db_master server engineyard' 'ey ssh -e production_2 --db-master'\; attach"

alias cook_development='cookbook && git checkout develop && ey recipes upload -e development && ey recipes apply -e development && for i in {1..100}; do; ey ssh "tail -n 100 /var/log/chef.custom.log" -e development; sleep 20;  clear; done;'
alias cook_production='cookbook && git checkout production  && ey recipes upload -e production_2 && ey recipes apply -e production_2 && for i in {1..100}; do; ey ssh "tail -n 100 /var/log/chef.custom.log" -e production_2; sleep 20;  clear; done;'
alias cook_staging='cookbook  && git checkout staging && ey recipes upload -e staging_tiny && ey recipes apply -e staging_tiny && for i in {1..100}; do; ey ssh "tail -n 100 /var/log/chef.custom.log" -e staging_tiny; sleep 20;  clear; done;'

alias tail_production_utilities='cookbook && for i in {1..100}; do; ey ssh "tail -n 200 /data/peertransfer_core/current/log/bus_hedge_production.log /data/peertransfer_core/current/log/bus_unhedge_production.log /data/peertransfer_core/current/log/production.log /data/peertransfer_health_manager/current/log/production.log /data/peertransfer_exchange/current/log/production.log /data/peertransfer_hedge_oanda/current/log/production.log" -e production_2 --utilities; sleep 10;  clear; done;'
alias tail_production='cookbook && for i in {1..100}; do; ey ssh "tail -n 200 /data/peertransfer_core/current/log/production.log /data/peertransfer_operations/current/log/production.log /data/peertransfer_payschool/current/log/production.log /data/peertransfer_dashboards/current/log/production.log " -e production_2; sleep 10;  clear; done;'

alias tail_staging_utilities='cookbook && for i in {1..100}; do; ey ssh "tail -n 200 /data/peertransfer_core/current/log/bus_hedge_production.log /data/peertransfer_core/current/log/bus_unhedge_production.log /data/peertransfer_core/current/log/production.log /data/peertransfer_health_manager/current/log/production.log /data/peertransfer_exchange/current/log/production.log /data/peertransfer_hedge_oanda/current/log/production.log" -e staging_tiny --utilities; sleep 10;  clear; done;'
alias tail_staging='cookbook && for i in {1..100}; do; ey ssh "tail -n 200 /data/peertransfer_core/current/log/production.log /data/peertransfer_operations/current/log/production.log /data/peertransfer_payschool/current/log/production.log /data/peertransfer_dashboards/current/log/production.log " -e staging_tiny; sleep 10;  clear; done;'
alias production='osascript /Volumes/peertransfer_code/scripts/open_production.scpt'

bindkey '^R' history-incremental-search-backward
. ~/.chef/env
