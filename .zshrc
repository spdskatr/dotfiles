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

# Misc crap
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias rm='rm -I'
alias vi='vim'
alias grep='grep --color=auto'
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

# Chatbot stuff
export K_PROMPT='[ %t ] %F{red}%BKernel%b%f %F{green}-%f '

# This has gone too far
print -P "\r[ %t ] %F{magenta}ZSH: Connection established with kernel%f"
print -P "${K_PROMPT}Welcome to %B%F{green}Userspace%f%b!"
print -P "${K_PROMPT}Population: just you and me *wink*"

PS1="[ %t ] %F{blue}%n%f %F{207}-%f "

zle_highlight=( default:fg=251 )

# No colors in tty
[[ `tty` == "/dev/tty"* ]] && return
[[ "$TERM" = "screen" ]] && [[ -n "$TMUX" ]] && return

set +o promptsp

#SPACESHIP_CHAR_SYMBOL=":) "
#autoload -U promptinit
#promptinit
#prompt spaceship

# If I use powerline
#powerline-daemon -q
#. /usr/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

