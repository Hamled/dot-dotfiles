#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Use vim mode
set -o vi

PS1='[\u@\h \W]\$ '

[[ -f ~/.bash_alias ]] && . ~/.bash_alias

source /usr/share/chruby/chruby.sh
source /usr/share/chruby/auto.sh

source /usr/share/nvm/init-nvm.sh
