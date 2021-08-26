# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# Path to your oh-my-zsh installation.
export ZSH="/home/nick/.oh-my-zsh"

export PATH=$HOME/.local/bin:$PATH

ZSH_THEME="spaceship"
SPACESHIP_DIR_TRUNC_REPO=false
SPACESHIP_PACKAGE_SYMBOL=' '

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
alias la='exa -la --icons --group-directories-first'
alias shutdown='systemctl poweroff -i'

# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[6 q';; # beam
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[6 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[6 q' ;} # Use beam shape cursor for each new prompt.

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
setopt autocd

export GTK_IM_MODULE=xim
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
# Dành cho những phần mềm dựa trên qt4
export QT4_IM_MODULE=ibus
# Dành cho những phần mềm dùng thư viện đồ họa clutter/OpenGL
export CLUTTER_IM_MODULE=ibus
export GLFW_IM_MODULE=ibus

# if [[ -z $(pgrep sxhkd) ]]; then
#   initKeyboard &
# fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/nick/.miniconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/nick/.miniconda/etc/profile.d/conda.sh" ]; then
        . "/home/nick/.miniconda/etc/profile.d/conda.sh"
    else
        export PATH="/home/nick/.miniconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

