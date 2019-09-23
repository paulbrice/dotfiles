## setup: history
HISTSIZE=5000
HISTFILESIZE=10000
shopt -s histappend

## setup: bash completion and prompt
if [ -f $(brew --prefix)/etc/bash_completion.d ]; then
  . $(brew --prefix)/etc/bash_completion
fi

## setup: GoLang environment
export GOPATH=$HOME/code/go-workspace
export GOROOT=/usr/local/go
export PATH=$PATH:$GOPATH/bin

## Setup: rbenv
if [ -f /usr/local/bin/rbenv ]; then
  eval "$(rbenv init -)"
fi

## setup: docker completion
if [ -f /usr/local/bin/docker ]; then
  if command -v docker 1>/dev/null 2>&1; then
    if [ ! -L /usr/local/etc/bash_completion.d/docker ]; then
      ln -s /Applications/Docker.app/Contents/Resources/etc/docker.bash-completion /usr/local/etc/bash_completion.d/docker
      ln -s /Applications/Docker.app/Contents/Resources/etc/docker-machine.bash-completion /usr/local/etc/bash_completion.d/docker-machine
      ln -s /Applications/Docker.app/Contents/Resources/etc/docker-compose.bash-completion /usr/local/etc/bash_completion.d/docker-compose
    fi
  fi
fi

## setup: pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi
