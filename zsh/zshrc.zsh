clear #remove the last login message
## LOAD OTHER FILES, FOR OGANISING
source  ~/dotfiles/zsh/alias.zsh
# OODLE
# source ~/dotfiles/zsh/oodle_alias.zsh

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
# setopt prompt_subst

# Config for prompt. PS1 synonym.
# prompt='%2/ $(git_branch_name) > '


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
setopt PROMPT_SUBST
export PROMPT='${COLOR_DIR}%B%~%b ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF} %% '


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/Users/ezracitron/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/Users/ezracitron/opt/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "/Users/ezracitron/opt/anaconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/Users/ezracitron/opt/anaconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<


export PATH="$HOME/.poetry/bin:$PATH"
