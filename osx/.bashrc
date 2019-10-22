# history
# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# alias
alias ll='ls -l'
alias awsume=". awsume"

# Setup Git
# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh

# Prompt
# source ~/.bash_prompt
PS1='\u\[\033[0;36m\]@\[\033[0;36m\]\h \W\[\033[0;32m\]$(__git_ps1)\n\[\033[0;32m\]└─▶\[\033[0m\] '


# Custom Path
export CLICOLOR=1
export PATH=$HOME/.local/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/bin:$PATH #adding local bin for tooling
export PATH="/usr/local/sbin:$PATH"

# proxy
export http_proxy="http://proxy.ops.tiaa-cref.org:8080"
export https_proxy="http://proxy.ops.tiaa-cref.org:8080"
export no_proxy="127.0.0.0,local.host"
export HTTP_PROXY=$http_proxy
export HTTPS_PROXY=$https_proxy
export NO_PROXY=$no_proxy
export ALL_PROXY=$http_proxy

# kube config
export KUBECONFIG=".kube/config"

# AWS
export AWS_PROFILE="saml"

# Homebrew Alias
alias install-homebrew=". /install-homebrew.sh"
alias uninstall-homebrew=". /uninstall-homebrew.sh"

# Set AWS Env Vars from .aws/credentials file
alias set-aws=". aws-export-wrapper.sh"
alias unset-aws=". unset-aws.sh"

# Unset Proxy
alias unset-proxy=". unset-proxy.sh"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh

# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh

# Setup asdf 
source /usr/local/opt/asdf/asdf.sh
source /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash

# configure asdf
#source .config-asdf
export PIPENV_VENV_IN_PROJECT=true
