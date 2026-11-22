# Python virtual environments
alias mve='python3 -m venv .venv'
alias sve='source .venv/bin/activate'
alias py='python3'

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias l='ls'
alias ll='ls -al'

# Git
alias gs='git status -sb'
alias gd='git diff'
alias ga='git add'
alias gc='git commit'
alias gl='git log -10 --oneline'
alias glg='git log --graph --decorate --oneline --all'

gcm() {
  git commit -m "$*"
}
