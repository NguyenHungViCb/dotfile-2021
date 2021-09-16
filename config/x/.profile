export EDITOR=/usr/bin/lvim
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export PATH=~/.npm-global/bin:$PATH
export TERMINAL="/usr/bin/alacritty"
export BROWSER="/usr/bin/microsoft-edge-beta"
export THEME="dark"
# export LESS_TERMCAP_mb=$'\e[1;32m'
# export LESS_TERMCAP_md=$'\e[1;32m'
# export LESS_TERMCAP_me=$'\e[0m'
# export LESS_TERMCAP_se=$'\e[0m'
# export LESS_TERMCAP_so=$'\e[01;33m'
# export LESS_TERMCAP_ue=$'\e[0m'
# export LESS_TERMCAP_us=$'\e[1;4;31m'

# if running bash
if [ -n "$BASH_VERSION" ]; then
	# include .bashrc if it exists
	if [ -f "$HOME/.bashrc" ]; then
		. "$HOME/.bashrc"
	fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
	    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
	    PATH="$HOME/.local/bin:$PATH"
fi

# set PATH so it includes cargo's bin if it exists
if [ -d "$HOME/.cargo/bin" ] ; then
	PATH="$HOME/.cargo/bin:$PATH"
fi

# set PATH so it includes gem packages
if [ -d "$HOME/.gem/ruby/2.7.0/bin" ] ; then
	PATH="$HOME/.gem/ruby/2.7.0/bin:$PATH"
fi

if [ -d "$HOME/.local/share/gem/ruby/3.0.0/bin" ] ; then
  PATH="$HOME/.local/share/gem/ruby/3.0.0/bin:$PATH"
fi

# set PATH so it includes .dotnet
if [ -d "$HOME/.dotnet" ] ; then
  PATH="$HOME/.dotnet:$PATH"
fi

if [ -d "$HOME/.miniconda" ]; then
  PATH="$HOME/.miniconda/bin:$PATH"
fi
