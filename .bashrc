#Default bash editor
export EDITOR=vim

#Aliases
alias ll='ls -al'
alias s='cd ..'
alias ss='cd ../..'
alias sss='cd ../../..'
alias ssss='cd ../../../..'
alias sssss='cd ../../../../..'
alias ssssss='cd ../../../../../..'

#Display current git branch in prompt
function parse_git_branch () {
       git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"

PS1="$GREEN\u$NO_COLOUR:\w$YELLOW\$(parse_git_branch)$NO_COLOUR\$"
