# Fig pre block. Keep at the top of this file.
export EDITOR=/usr/bin/vim
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export PATH=~/.npm-global/bin:$PATH
export TERMINAL="/usr/bin/alacritty"
export BROWSER="/usr/bin/microsoft-edge-beta"
export THEME="dark"
export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
export JAVA_HOME="$HOME/Library/Java/JavaVirtualMachines/openjdk-21/Contents/Home"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export REPO_OS_OVERRIDE='linux'
export PROJECT='$HOME/Documents/projects'
export ANDROID_HOME="$HOME/Library/Android/sdk"
# export HISTFILE="${XDG_STATE_HOME}"/bash/history
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export GTK_THEME=WhiteSur-Dark:dark
export DENO_INSTALL="$HOME/.deno"
export CHROME_EXECUTABLE="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
export WEZTERM_THEME="catppuccin-latte"
# export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
setopt appendhistory
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
if [ -d "$CARGO_HOME/bin" ] ; then
	PATH="$CARGO_HOME/bin:$PATH"
fi

# set PATH so it includes gem packages
if [ -d "/opt/homebrew/opt/ruby" ] ; then
  PATH="/opt/homebrew/opt/ruby/bin:$PATH"
  PATH="/opt/homebrew/lib/ruby/gems/3.2.0/bin:$PATH"
  export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
  export CPPFLAGS="-I/opt/homebrew/opt/ruby/include"
fi

# set PATH so it includes .dotnet
if [ -d "$HOME/.dotnet" ] ; then
  PATH="$HOME/.dotnet:$PATH"
fi

if [ -d "$HOME/.miniconda" ]; then
  PATH="$HOME/.miniconda/bin:$PATH"
fi

if [ -d "$HOME/.local/share/flutter/bin" ]; then
  PATH="$HOME/.local/share/flutter/bin:$PATH"
fi

if [ -d "$HOME/Android/Sdk/cmdline-tools/latest/bin" ]; then
  PATH="$HOME/Android/Sdk/cmdline-tools/latest/bin:$PATH"
fi

if [ -d "$HOME/Android/Sdk/platform-tools/" ]; then
  PATH="$HOME/Android/Sdk/platform-tools:$PATH"
fi

if [ -d "$HOME/.local/share/jre1.8.0_341/bin" ]; then
  PATH="$HOME/.local/share/jre1.8.0_341/bin:$PATH"
fi

if [ -d "$HOME/.pub-cache/bin" ]; then
  PATH="$HOME/.pub-cache/bin:$PATH"
fi

if [ -d "$HOME/go/bin" ]; then
  PATH="$HOME/go/bin:$PATH"
fi

if [ -d "$DENO_INSTALL/bin" ]; then
  PATH="$DENO_INSTALL/bin:$PATH"
fi

if [ -d "/home/nick/.local/share/cargo/env" ]; then
  . "/home/nick/.local/share/cargo/env"
fi

if [ -d $ANDROID_HOME ]; then
  PATH=$PATH:$ANDROID_HOME/emulator
  PATH=$PATH:$ANDROID_HOME/tools
  PATH=$PATH:$ANDROID_HOME/tools/bin
  PATH=$PATH:$ANDROID_HOME/platform-tools
fi
. "/Users/nick/.local/share/cargo/env"

if [ -d /opt/homebrew/opt/mysql-client/bin ]; then
  PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
fi
