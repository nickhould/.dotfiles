# My custom speed dial
lckr=~/Dropbox/PasswordBox/lckr/app/lckr
projects=~/Sites/rails_projects/ 

# Password Box - start server
alias startlckr='rvmsudo MYSQL_SOCKET=/tmp/mysql.sock rails s -p 80'
export MYSQL_SOCKET='/tmp/mysql.sock'

# Git Tab Completion
source ~/git-completion.bash
source ~/hub.bash_completion.sh

#Show branch in status line

parse_git_branch() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ →\ \1/'
}

export PS1='\[\e[1;31m\]\W\[\e[1;33m\]$(parse_git_branch)\[\e[0;39m\]> '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD}\007"'
export EDITOR="subl"

# This is a good place to source rvm v v v
[[ -s "/Users/jean-nicholashould/.rvm/scripts/rvm" ]] && source "/Users/jean-nicholashould/.rvm/scripts/rvm"
# This loads RVM into a shell session.

# Custom Shell Colours
alias ls='ls -GFh'

#Homebrew correction for OSX Lion
export PATH=/usr/local/bin:$PATH

# Correction for sublime	
export PATH="~/bin:/usr/local/bin:/usr/local/sbin:$PATH"

# Give it a # and a dir, it will cd to that dir, then `cd ..` however many times you've indicated with the number
# The number defaults to 1, the dir, if not provided, defaults to the output of the previous command
# This lets you find the dir on one line, then run the command on the next
2dir() {
  last_command="$(history | tail -2 | head -1 | sed 's/^ *[0-9]* *//')"
  count="${1-1}"
  name="${2:-$($last_command)}"
  while [[ $count > 0 ]]
    do
      name="$(dirname "$name")"
      ((count--))
  done
  echo "$name"
  cd "$name"
}

# Hub
alias git=hub
eval "$(hub alias -s)"

# MySQL

#Set the MySQL Home environment variable to point to the root directory of the MySQL installation.
export set MYSQL_HOME=/usr/local/mysql-5.5.16-osx10.6-x86_64
 
# Add the /bin directory from the MYSQL_HOME location into your $PATH environment variable.
export set PATH=$PATH:$MYSQL_HOME/bin
 
# Create aliases that make it easier for you to manually start and stop the MySQL Daemon.
alias mysqlstart="sudo /Library/StartupItems/MySQLCOM/MySQLCOM start"
alias mysqlstop="sudo /Library/StartupItems/MySQLCOM/MySQLCOM stop"
alias mysqlstatus="ps aux | grep mysql | grep -v grep"

