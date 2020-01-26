#
# ~/.bash_profile
#

export PATH=$PATH:`yarn global bin`
export PATH=$PATH:~/.cargo/bin

export PATH=~/.ellipsis/bin:$PATH

if [[ -d ~/bin ]]; then
  export PATH=~/bin:$PATH
fi

export EDITOR="emacs -t"
export VISUAL="emacs --wait"
export TERMINAL=termite

export HISTCONTROL=ignoreboth

export GDK_SCALE=2

# Connect Gnome keyring
if [[ -n "$DESKTOP_SESSION" ]]; then
  eval $(gnome-keyring-daemon --start)
  export SSH_AUTH_SOCK
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
