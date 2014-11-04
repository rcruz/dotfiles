#*************************************inspiration*************************************************
echo "How are you reaching your goals today?"
#****************************************alias****************************************************
alias chrome="open /Applications/Google\ Chrome.app/"
alias trello="open http://trello.com"
alias gmail="open http://gmail.com"
alias ls='ls -Gp'
#**************************showing git branches in bash prompt************************************
# Set git autocompletion and PS1 integration
if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
  source ~/.git-completion.bash
fi

function proml {
  local         RED="\[\033[0;31m\]"
  local   LIGHT_RED="\[\033[1;31m\]"
  local      YELLOW="\[\033[0;33m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local       WHITE="\[\033[1;37m\]"
  local  LIGHT_GRAY="\[\033[0;37m\]"
  local LIGHT_PURPLE="\[\033[1;34m\]"
  local        GRAY="\[\033[1;30m\]"
  local  LIGHT_BLUE="\[\033[1;36m\]"
  case $TERM in
    xterm*)
    TITLEBAR='\[\033]0;\u@\h:\w\007\]'
    ;;
    *)
    TITLEBAR=""
    ;;
  esac

PS1="${TITLEBAR}\
$LIGHT_BLUE\w$LIGHT_GRAY\$(__git_ps1)\
\n$WHITE\$ "
PS2='> '
PS4='+ '
}
proml

GIT_PS1_SHOWDIRTYSTATE=true

export TERM="xterm-256color"

