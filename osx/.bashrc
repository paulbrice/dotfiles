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
export no_proxy="127.0.0.0,local.host"
export http_proxy=""
# repeats
export https_proxy=$http_proxy
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

# Setup asdf 
source /usr/local/opt/asdf/asdf.sh
source /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash

# configure asdf
#source .config-asdf
export PIPENV_VENV_IN_PROJECT=true
