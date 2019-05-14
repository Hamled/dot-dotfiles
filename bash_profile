#
# ~/.bash_profile
#

if [[ -d ~/bin ]]; then
  export PATH=~/bin:$PATH
fi

export EDITOR="emacs -t"
export VISUAL="emacs --wait"
export TERMINAL=termite

export GDK_SCALE=2

# Connect Gnome keyring
if [[ -n "$DESKTOP_SESSION" ]]; then
  eval $(gnome-keyring-daemon --start)
  export SSH_AUTH_SOCK
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
