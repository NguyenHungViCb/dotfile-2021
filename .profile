export EDITOR=/usr/bin/vim
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export PATH=~/.npm-global/bin:$PATH
# source "$HOME/.cargo/env"
# export PATH="$HOME/.cargo/bin:$PATH"
# Set to wine32
# export WINEPREFIX=$HOME/.wine32
# export WINEARCH=win32
export TERMINAL="alacritty"
export BROWSER="firefox"

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
if [ -d "$HOME/.local/bin" ] ; then
	PATH="$HOME/.local/bin:$PATH"
fi

# set PATH so it includes gem packages
if [ -d "$HOME/.gem/ruby/2.7.0/bin" ] ; then
	PATH="$HOME/.gem/ruby/2.7.0/bin:$PATH"
fi
