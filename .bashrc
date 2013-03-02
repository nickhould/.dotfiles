# Git Tab Completion
source ~/git-completion.bash

#Show branch in status line
PS1='[\W$(__git_ps1 " (%s)")]\$ '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

# This is a good place to source rvm v v v
[[ -s "/Users/jean-nicholashould/.rvm/scripts/rvm" ]] && source "/Users/jean-nicholashould/.rvm/scripts/rvm"
# This loads RVM into a shell session.

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting


#RSpec Colours
alias spec=spec --color --format specdoc