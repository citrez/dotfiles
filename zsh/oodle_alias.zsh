export ds="~/Documents/repos/oodle-data-science-projects"

# oodle
alias awslogin="aws-azure-login -a --no-prompt"
alias clone_data_flow="git clone git@github.com:oodlefinance/oodle-data-flow.git"
export affordability="$HOME/Documents/repos/affordability"
export policy_rules="$HOME/Documents/repos/policy_rules"
export oodle_data_flow="$HOME/Documents/repos/oodle-data-flow"
alias cal="$HOME/codeartifact-login.sh"
# PW
export my_pw="'Rosewinter60!?'|tr -d '\n'" # remove newline charachter
alias cpp="echo $my_pw|pbcopy" #copy pw

#echo "AWS_PROFILE=dev"
export AWS_PROFILE=dev

export PATH=$HOME/bin:/usr/local/bin:$PATH
eval "$(pyenv init -)"
export PATH="$HOME/.poetry/bin:$PATH"

eval "$(pyenv init -)"
