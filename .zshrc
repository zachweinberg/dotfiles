setopt PROMPT_SUBST

alias gp="git pull"
alias gs="git status"
alias ga="git add ."
alias hist="git log --oneline"
alias c="clear"
alias ls="ls -la"
alias desk="cd ~/Desktop"
alias od="cd ~/Desktop/odhb"
alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder"

gc(){
  git commit -m "$1" 
}

branch(){
  git checkout -b $1
}

checkout(){
  git checkout $1
}

parse_git_branch() {
  git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

export PROMPT='%F{grey}%n%f %F{cyan}%~%f %F{green}$(parse_git_branch)%f %F{normal}$%f '
