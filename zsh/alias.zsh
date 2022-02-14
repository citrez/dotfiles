
alias youtube-dl-audio= "youtube-dl --extract-audio --audio-format mp3"
alias mve="virtualenv .venv"
alias sve="source .venv/bin/activate"

#EDIT
alias ea="vim ~/dotfiles/zsh/alias.zsh && source ~/dotfiles/zsh/alias.zsh"
alias ez="vim ~/dotfiles/zsh/zshrc.zsh  && source ~/dotfiles/zsh/zshrc.zsh"
alias eg="vim ~/dotfiles/git/gitconfig  && source ~/dotfiles/git/gitconfig"
alias eik="code ~/Documents/Everything-I-Know"

#DIRECTORY
alias d="cd"
alias dd="cd ~/Documents"
alias dr="cd ~/Documents/repos"
alias dh="cd ~/"
alias dp="cd ~/my_projects"

# NAVIGATION

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."


alias l="ls"
alias ll="ls -al"
alias f='open .'
 
#GIT
alias gs="git status -sb"
alias ga="git add"
alias gau="git add -u"
alias gc="git commit"
alias gb="git branch"
alias glg="git log --graph --decorate --oneline --abbrev-commit"

# My variables
export repos="~/Documents/repos"
export myprojects="~/Documents/my-projects"
export ds="~/Documents/repos/oodle-data-science-projects"
# Other 
alias v="vim"

# oodle
alias awslogin="aws-azure-login -a --no-prompt"
alias clone_data_flow="git clone git@github.com:oodlefinance/oodle-data-flow.git"

# poetry
alias pshow="poetry show -v"

# FUNCTIONS
gcm() {
    #do things with parameters like $1 such as
    str="$*"
    git commit -m"$str"
    echo "git commit -m $str"
}
