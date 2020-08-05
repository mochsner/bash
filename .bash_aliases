### GIT
alias glg='git log --graph --pretty=oneline --abbrev-commit --decorate --all'
alias gl='git log'
alias gd='git diff'
alias gba='git branch -a'
alias gs='git status'
alias ga='git add'
alias gaa='git add --all'
alias gc='git commit'
alias gca='git commit -a'
alias gm='git merge'
alias gco='git checkout'
alias gce='git config --global e'


# Ruby Env (https://github.com/rbenv/rbenv#readme)
export PATH="$HOME/.rbenv/bin:$PATH:/snap/bin"
eval "$(rbenv init -)"

# Vim
SUDO_EDITOR=/usr/bin/vim
export SUDO_EDITOR
alias se=sudoedit
function v { vim "$1"; }
export -f v


# RDP connections
alias 'evpn'='sudo openconnect vpn.epic.com -u mochsner'
alias 'erd1'="rdesktop -f -g 1920x1080 -u mochsner -d epic.com 10.15.95.13"
alias 'erd12'="xfreerdp /monitors:1,2 /multimon /u:mochsner /v:10.15.95.13 /d:epic.com /dynamic-resolution"
alias 'erd13'="xfreerdp /monitors:1,3 /multimon /u:mochsner /v:10.15.95.13 /d:epic.com /dynamic-resolution"
alias 'erd23'="xfreerdp /monitors:2,3 /multimon /u:mochsner /v:10.15.95.13 /d:epic.com /dynamic-resolution"
alias 'erd3'="xfreerdp /multimon /u:mochsner /v:10.15.95.13 /d:epic.com /dynamic-resolution"


# File / Directory Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
alias ........="cd ../../../../../../.."
alias .........="cd ../../../../../../../.."
alias ..........="cd ../../../../../../../../.."
alias ...........="cd ../../../../../../../../../.."
alias ............="cd ../../../../../../../../../../.."
alias .............="cd ../../../../../../../../../../../.."

# CD to pushd/popd
function cd() {
  if [ "$#" = "0" ]
  then
  pushd ${HOME} > /dev/null
  elif [ -f "${1}" ]
  then
    ${EDITOR} ${1}
  else
  pushd "$1" > /dev/null
  fi
}

function bd(){
  if [ "$#" = "0" ]
  then
    popd > /dev/null
  else
    for i in $(seq ${1})
    do
      popd > /dev/null
    done
  fi
}

# Misc
export CLASSPATH=$CLASSPATH:~/code/path/algs4.jar

# OS
alias hibernate="systemctl hibernate"
