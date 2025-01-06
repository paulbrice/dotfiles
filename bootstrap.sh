#!/bin/bash
#MAC OSX using system bash for bootstrap - bash v3.2
#http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail
IFS=$'\n\t'


ASDF_PLUGINS=(
    checkov
    hadolint
    nodejs
    opa
    opentofu
    packer
    python
    shellcheck
    shfmt
    terraform
    terraform-docs
    tfsec
    tf-summarize
)

# if required place environment settings here. (proxy etc..)
echo "set temp env vars.." 

# clean up
echo "cleanup up old files.." 
rm -f ~/Brewfile
rm -rf ~/.config
rm -rf ~/.asdf
rm -f ~/.zshrc
rm -f ~/.mrconfig
rm -f ~/.gitconfig

# create dir
mkdir ~/.config

# install xcode developer tools
echo "install osx developer tools.." 
if [ -d "$(xcode-select -p)" ]; then
    echo "xcode command line tools are installed..."
else
    echo "installing xcode commandline tools..."
    xcode-select --install
fi

# setup git
./bin/setup-git.sh

# install oh-my-zsh
echo "install oh-my-zsh..." 
if [ -d "${HOME}/.oh-my-zsh" ]; then
    rm -r "${HOME}/.oh-my-zsh"
fi
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# install homebrew
echo "installing homebrew..."
if test ! "$(which brew)"; then
    /bin/bash -c \
"$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# copy config files
echo "copy config files.." 
cp "$PWD/config/Brewfile" "$HOME/Brewfile"
cp "$PWD/config/.mrconfig" "$HOME/.mrconfig"
cp "$PWD/config/ssh.config" "$HOME/.ssh/config"
cp "$PWD/config/.tool-versions" "$HOME/.tool-versions"
cp "$PWD/config/.zprofile" "$HOME/.zprofile"

echo "update & upgrade homebrew..."
brew update
brew upgrade
brew cleanup

echo "installing brew packages and casks..."
brew bundle --file "$HOME/Brewfile"

# install adsf plugins
echo "installing asdf plugins..."
for plugin in "${ASDF_PLUGINS[@]}"; do
    asdf plugin-add "${plugin}"
done

# install asdf plugin versions
echo "installing asdf plugin versions..."
cd && asdf install

echo "installing asdf plugins..."
for plugin in "${ASDF_PLUGINS[@]}"; do
    asdf global "${plugin}" latest
done

# asdf reshim
echo "reshim asdf..."
asdf reshim nodejs
asdf reshim python

# cleanup
echo "cleaning up files..."
