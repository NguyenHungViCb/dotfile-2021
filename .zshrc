# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# Path to your oh-my-zsh installation.
export ZSH="/home/nick/.oh-my-zsh"

export PATH=$HOME/.local/bin:$PATH

ZSH_THEME="spaceship"
SPACESHIP_DIR_TRUNC_REPO=false

plugins=(
	z
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
	vi-mode
)

ZSH_DISABLE_COMPFIX=true
# source /usr/share/zsh/manjaro-zsh-config
source $ZSH/oh-my-zsh.sh
source $HOME/.profile
# source /usr/share/fzf/key-bindings.zsh
# source /usr/share/fzf/completion.zsh
# User configuration

# ZSH_HIGHLIGHT_STYLES[precommand]='fg=green'
# ZSH_HIGHLIGHT_STYLES[builtin]='fg=green'
# ZSH_HIGHLIGHT_STYLES[alias]='fg=green'
# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#747475"
# # ZSH_HIGHLIGHT_STYLES[default]='fg=cyan'
bindkey '^ ' autosuggest-accept
ufetch
alias ls='exa -l --icons --group-directories-first'
alias shutdown='systemctl poweroff -i'

# SpaceShip configuration
# alias clear='clear && python3 ~/.local/bin/lichthi.py'
# python3 ~/.local/bin/lichthi.py

# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# bindkey -v
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

PATH="/home/nick/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/nick/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/nick/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/nick/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/nick/perl5"; export PERL_MM_OPT;
export PATH=/home/$USER/.config/nvcode/utils/bin:$PATH

export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT4_IM_MODULE=ibus
export CLUTTER_IM_MODULE=ibus
ibus-daemon -drx
