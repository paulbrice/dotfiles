# dotfiles

### Clone repo into root of local profile.

`~/git clone git@github.com:paulbrice/dotfiles.git`

### Install Brew

[https://brew.sh](https://brew.sh/)

## Setup Brew with Bundle

`brew bundle install`

Installs...

- "homebrew/core"
- "homebrew/bundle"
- "caskroom/cask"
- "awscli"
- "bash"
- "bash-completion"
- "diff-so-fancy"
- "evernote"
- "git"
- "golang"
- "iterm2"
- "jq"
- "keepassx"
- "kubernetes-cli"
- "openssh"
- "packer"
- "pyenv"
- "pyenv-virtualenv"
- "python"
- "pv"
- "rbenv"
- "the_silver_searcher"
- "tflint"
- "tree"
- "tfenv"
- "terraform-docs"
- "vagrant-completion"
- "vagrant"
- "vagrant-manager"
- "virtualbox"
- "vim"
- "visual-studio-code"
- "wget"
- "zsh"
- "zsh-completions"

## Setup Oh-My-Zsh

[https://github.com/robbyrussell/oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

``` bash
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
chsh -s /usr/local/bin/zsh
```

### Install Solorized for iTerm2

[http://ethanschoonover.com/solarized](http://ethanschoonover.com/solarized)

[https://github.com/altercation/solarized/tree/master/iterm2-colors-solarized](https://github.com/altercation/solarized/tree/master/iterm2-colors-solarized)

### Setup PyEnv

Get Available Versions

`pyenv install --list`

### Install Other Python Version

For python 2.7.15

`pyenv install 2.7.15`

### Install Powerline Fonts

[https://github.com/powerline/fonts](https://github.com/powerline/fonts)

Change Font to iTerm2 profile

- 14 Source Code Pro for Powerline

### Install Ruby / Set Shell to Latest

Check: [https://www.ruby-lang.org/en/documentation/installation/](https://www.ruby-lang.org/en/documentation/installation/)

``` bash
rbenv versions
system (set by /Users/paulbrice/.rbenv/version)

rbenv install 2.5.1 (or latest)
rbenv shell 2.5.1 (or latest)
  system
* 2.5.1 (set by RBENV_VERSION environment variable)
```

Check rbenv

`curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash`

### Setup Diff-So-Fancy

[https://github.com/so-fancy/diff-so-fancy](https://github.com/so-fancy/diff-so-fancy)

``` bash
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
git config --global color.diff-highlight.oldNormal    "red bold"
git config --global color.diff-highlight.oldHighlight "red bold 52"
git config --global color.diff-highlight.newNormal    "green bold"
git config --global color.diff-highlight.newHighlight "green bold 22"

git config --global color.diff.meta       "yellow"
git config --global color.diff.frag       "magenta bold"
git config --global color.diff.commit     "yellow bold"
git config --global color.diff.old        "red bold"
git config --global color.diff.new        "green bold"
git config --global color.diff.whitespace "red reverse"
```

### Install Ruby Gem: bundler

`gem install bundler`

### Setup GoLang env

Create directory structure: `mkdir -p ~/develop/go-workspace/{pkg,src,bin}`


### Install ChefDK

[https://downloads.chef.io/chefdk](https://downloads.chef.io/chefdk)

### Install Docker Command Completion

[https://docs.docker.com/compose/completion/#install-command-completion](https://docs.docker.com/compose/completion/#install-command-completion)

``` bash
mkdir -p ~/.zsh/completion
$ curl -L https://raw.githubusercontent.com/docker/compose/1.21.2/contrib/completion/zsh/_docker-compose > ~/.zsh/completion/_docker-compose
```

### Install Node Package Manager

[https://nodejs.org/en/download/package-manager/](https://nodejs.org/en/download/package-manager/)
