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

setopt correct

# Misc crap
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias rm='rm -I'
alias vi='vim'
alias less='less -Q'

# owo
alias owo='sed -e "s/[lr]/w/g" -e "s/[LR]/W/g"'
alias owooof='oof | owo'

# GNU/Linux copypasta
alias pasta='cat $HOME/.config/pasta.txt'
alias oofpasta='pasta | cowsay -f tux | lolcat -f'
alias owopasta='oofpasta | owo'

# I am a horrible human being
sl() {
    /usr/bin/sl $* | lolcat
}


eval $(thefuck --alias "fuck")

powerline-daemon -q
. /usr/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
