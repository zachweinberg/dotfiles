alias gp="git pull"
alias gs="git status"
alias ga="git add ."
alias hist="git log --oneline"
alias c="clear"
alias ls="ls -la"
alias desk="cd ~/Desktop"

gc(){
  git commit -m "$1" 
}

branch(){
  git checkout -b $1
}

checkout(){
  git checkout $1
}

alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/zach/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/zach/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/zach/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/zach/google-cloud-sdk/completion.zsh.inc'; fi

function parse_git_branch() {
  git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

setopt PROMPT_SUBST

export PROMPT='%F{grey}%n%f %F{cyan}%~%f %F{green}$(parse_git_branch)%f %F{normal}$%f '

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

