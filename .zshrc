# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/spdskatr/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#setopt correct

#export PATH="${PATH}:$HOME/bin"
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export XDG_DATA_HOME=/home/spdskatr/.local/share
export XDG_DATA_DIRS=/usr/share:/home/spdskatr/.local/share:/var/lib/flatpak/exports/share
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export EDITOR=vim

# Git dotfile syncing
alias dotfiles='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

# Misc crap
alias ls='ls --color=auto'
alias rm='rm -I'
alias mv='mv -i'
alias grep='grep --color=auto'
alias less='less -Q'
alias vim='nvim'

# owo
alias owo='sed -e "s/[lr]/w/g" -e "s/[LR]/W/g"'
alias owooof='oof | owo'

# GNU/Linux copypasta
alias pasta='cat $HOME/.config/pasta.txt'
alias oofpasta='pasta | cowsay -f tux | lolcat -f'
alias owopasta='oofpasta | owo'

setopt prompt_subst
PROMPT=$'%F{8}┌─(%f%F{11}%n%f%F{8}%)─[%f%B%~%b%F{8}]%(?..─[%F{14}%B%?%b%f%F{8}])%f\n%F{8}└─%f%B%F{11}%(!.#.$)%f%b '

# No colors in tty
[[ `tty` == "/dev/tty"* ]] && return
[[ "$TERM" = "screen" ]] && [[ -n "$TMUX" ]] && return

set +o promptsp
