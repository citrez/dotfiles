alias youtube-dl-audio= "youtube-dl --extract-audio --audio-format mp3"
# virtualenv create/activate/remove
alias mve="virtualenv .venv"
alias sve="source .venv/bin/activate"
alias rve="rm -rf .venv"

alias c="clear"
alias todo="python -m todo_cli"
alias pip=/usr/local/bin/pip3

#EDIT
alias ea="vim ~/dotfiles/zsh/alias.zsh && source ~/dotfiles/zsh/alias.zsh"
alias eo="vim ~/dotfiles/zsh/oodle_alias.zsh && source ~/dotfiles/zsh/oodle_alias.zsh"
alias ez="vim ~/dotfiles/zsh/zshrc.zsh  && source ~/dotfiles/zsh/zshrc.zsh"
alias eb="vim ~/dotfiles/brew/brew.sh  && source ~/dotfiles/zsh/brew.sh"
alias eg="vim ~/dotfiles/git/gitconfig  && source ~/dotfiles/git/gitconfig"
alias ev="vim ~/dotfiles/vim/vimrc.vim"
alias eik="code ~/Documents/Everything-I-Know"

#DIRECTORY
alias d="cd"
alias dd="cd ~/Documents"
alias dr="cd ~/Documents/repos"
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
alias gl="git log -10 --oneline"
alias gd="git diff"
alias gs="git status -sb"
alias gb="git branch -l"
alias ga="git add"
# alias gau="git add -u"
alias gc="git commit"
# alias gb="git branch"
alias glg="git log --graph --decorate --oneline --abbrev-commit"

# My variables
export repos="$HOME/Documents/repos/"
export myprojects="$HOME/Documents/my-projects/"
export snippet2="$HOME/Documents/my-projects/snippets2/src/snippets2"


# Other 
alias v="vim"

# poetry
alias pshow="poetry show -v"

# FUNCTIONS
gcm() {
    #do things with parameters like $1 such as
    str="$*"
    git commit -m"$str"
    echo "git commit -m $str"
}

# source other zsh files

