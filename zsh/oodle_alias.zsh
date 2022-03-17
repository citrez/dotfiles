export ds="~/Documents/repos/oodle-data-science-projects"

# oodle
alias awslogin="aws-azure-login -a --no-prompt"
alias clone_data_flow="git clone git@github.com:oodlefinance/oodle-data-flow.git"

#echo "AWS_PROFILE=dev"
export AWS_PROFILE=dev

export PATH=$HOME/bin:/usr/local/bin:$PATH
eval "$(pyenv init -)"
export PATH="$HOME/.poetry/bin:$PATH"
