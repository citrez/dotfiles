clear #remove the last login message
## LOAD OTHER FILES, FOR OGANISING
source  ~/dotfiles/zsh/alias.zsh
source ~/dotfiles/zsh/oodle_alias.zsh

# Find and set branch name var if in git repository.
function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo '- ('$branch')'
  fi
}

# Enable substitution in the prompt.
# Config for prompt. PS1 synonym.
# prompt='%2/ $(git_branch_name) > '
# setopt PROMPT_SUBST
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
 
parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

COLOR_DEF='%f'
COLOR_USR='%F{243}'
COLOR_DIR='%F{197}'
COLOR_GIT='%F{39}'
NEWLINE=$'\n'
PROMPT_DIRTRIM=3
export PROMPT='${COLOR_DIR}%B%(4~|.../%3~|%~)%b ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF} %% '

# pyenv setup
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

setopt PROMPT_SUBST

# add git autocompletion
autoload -Uz compinit && compinit

#poetry
export PATH="$HOME/.poetry/bin:$PATH"

export PATH=$HOME/bin:/usr/local/bin:$PATH
eval "$(pyenv init -)"
export PATH="$HOME/.poetry/bin:$PATH"
