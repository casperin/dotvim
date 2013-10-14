# export PATH="$HOME/local/node/bin:$PATH"
export PATH="$PATH:/usr/local/mysql/bin/"
export PATH="$PATH:/Library/PostgreSQL/9.0/bin"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/local/sbin"
alias l="ls -l"
alias la="ls -la"
alias ip="ipconfig getifaddr en1"
alias lan="ipconfig getifaddr en0"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias coffee='/usr/local/bin/coffee'

source ~/.git-completion.bash
complete -o default -o nospace -F _git_branch gb
complete -o default -o nospace -F _git_checkout gco

uptime

# Attribute codes:
# 00=none 01=bold 04=underscore 05=blink 07=reverse 08=concealed
# Text color codes:
# 30=black 31=red 32=green 33=yellow 34=blue 35=magenta 36=cyan 37=white
 # Background color codes:
# 40=black 41=red 42=green 43=yellow 44=blue 45=magenta 46=cyan 47=white

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export TERM="xterm-color"
#export PS1="   \[\033[33m\]\u @ \h   \w\\n\[\033[00m\]"
export PS1="\[\033[33m\]\w \\[\033[00m\]"

#export PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] "

# Easy extract
extract () {
  if [ -f $1 ] ; then
      case $1 in
          *.tar.bz2)   tar xvjf $1    ;;
          *.tar.gz)    tar xvzf $1    ;;
          *.bz2)       bunzip2 $1     ;;
          *.rar)       rar x $1       ;;
          *.gz)        gunzip $1      ;;
          *.tar)       tar xvf $1     ;;
          *.tbz2)      tar xvjf $1    ;;
          *.tgz)       tar xvzf $1    ;;
          *.zip)       unzip $1       ;;
          *.Z)         uncompress $1  ;;
          *.7z)        7z x $1        ;;
          *)           echo "don't know how to extract '$1'..." ;;
      esac
  else
      echo "'$1' is not a valid file!"
  fi
}

