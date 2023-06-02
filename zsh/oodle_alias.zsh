export ds="~/Documents/repos/oodle-data-science-projects"

# oodle
# alias awslogin="aws-azure-login -a --no-prompt --mode=gui"
alias awslogin="aws sso login --profile dev"
alias clone_data_flow="git clone git@github.com:oodlefinance/oodle-data-flow.git"
export affordability="$HOME/Documents/repos/affordability"
export policy_rules="$HOME/Documents/repos/policy_rules"
export oodle_data_flow="$HOME/Documents/repos/oodle-data-flow"
alias cal="$HOME/codeartifact-login.sh"

# mlflow
export MLFLOW_TRACKING_URI=https://dagshub.com/ezra-oodle/test_repo.mlflow 
export MLFLOW_TRACKING_USERNAME=ezra-oodle
export MLFLOW_TRACKING_PASSWORD=ce8d8ece0346efc7e9b2b69ab58185f92be80974
# PW
export my_pw="'LTvihHaZ5CrV5JAM84fk'|tr -d '\n'" # remove newline charachter
alias cpp="echo $my_pw|pbcopy" #copy pw

#echo "AWS_PROFILE=dev"
export AWS_PROFILE=dev

eval "$(pyenv init -)"
