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

# Command not found hook
. $HOME/bin/cnf

# Thefuck
eval $(thefuck --alias "fuck")

# Fallback PS1
PS1=':) '

# what kinda narcissistic person would even think up of this crap smh
# sounds like he's socially insecure for sure
print -P "[ %t ] %F{red}ZSH: Connection established with kernel%f"
print -P "[ %t ] Kernel %F{green}-%f Welcome to %B%F{green}Userspace%f%b!"
print -P "[ %t ] Kernel %F{green}-%f Population: just you and me *wink*"
PS1="%F{magenta}%B♥%b%f "

zle_highlight=( default:fg=252 )

# No colors in tty
[[ `tty` == "/dev/tty"* ]] && return
[[ "$TERM" = "screen" ]] && [[ -n "$TMUX" ]] && return

PS1="[ %t ] %n %F{207}-%f "

set +o promptsp

#SPACESHIP_CHAR_SYMBOL=":) "
#autoload -U promptinit
#promptinit
#prompt spaceship

# If I use powerline
#powerline-daemon -q
#. /usr/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh


