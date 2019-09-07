#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Use vim mode
set -o vi

PS1='[\u@\h \W]\$ '

[[ -f ~/.bash_alias ]] && . ~/.bash_alias

export PATH=$PATH:`yarn global bin`
export PATH=$PATH:~/.cargo/bin

export PATH=~/.ellipsis/bin:$PATH

source /usr/share/chruby/chruby.sh
source /usr/share/chruby/auto.sh

