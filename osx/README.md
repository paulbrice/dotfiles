# dotfiles

### Vim-Bootstrap

[http://vim-bootstrap.com/](http://vim-bootstrap.com/)

### Pull down dot files

```
cd ~
curl -O https://raw.githubusercontent.com/paulbrice/dotfiles/master/.bash_profile
curl -O https://raw.githubusercontent.com/paulbrice/dotfiles/master/.bashrc
curl -O https://raw.githubusercontent.com/paulbrice/dotfiles/master/.gemrc
curl -O https://raw.githubusercontent.com/paulbrice/dotfiles/master/.vimrc
curl -O https://raw.githubusercontent.com/paulbrice/dotfiles/master/Brewfile
curl -O https://raw.githubusercontent.com/paulbrice/dotfiles/master/README.md
```

### Install Brew

[https://brew.sh](https://brew.sh/)

## Setup Brew with Bundle

`brew bundle install`

See Brewfile for installation list.

## Setup AWSUME

[https://github.com/trek10inc/awsume](https://github.com/trek10inc/awsume)

Install awsume
`pip install awsume`

**Optional** - Install plugin
`awsume --install-plugin https://raw.githubusercontent.com/trek10inc/awsume/master/examplePlugin/console.py https://raw.githubusercontent.com/trek10inc/awsume/master/examplePlugin/console.yapsy-plugin`

### Setup ASDF Version Manager

asdf plugin-add shellcheck https://github.com/luizm/asdf-shellcheck
asdf plugin-add python https://github.com/danhper/asdf-python
asdf plugin-add terraform https://github.com/Banno/asdf-hashicorp.git
asdf plugin-add terraform-docs https://github.com/looztra/asdf-terraform-docs
asdf plugin-add terraform-validator https://github.com/looztra/asdf-terraform-validator
asdf plugin-add asdf-tflint https://github.com/RykHawthorn/asdf-tflint
asdf plugin-add packer https://github.com/Banno/asdf-hashicorp.git
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf plugin-add kubectl https://github.com/Banno/asdf-kubectl.git
asdf plugin-add helm https://github.com/Antiarchitect/asdf-helm.git
asdf plugin-add helmfile https://github.com/feniix/asdf-helmfile.git

### Setu Default Python Packages (user/local or asdf default file)
### Install Python Version

`asdf install python 3.7.4`
`asdf install python 2.7.15`

### Node.js (If Needed)

`https://github.com/asdf-vm/asdf-nodejs`

### Install Powerline Fonts

[https://github.com/powerline/fonts](https://github.com/powerline/fonts)

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

### Setup P4Merge for Diff/Merge

Git documentation goes over this process.

```
https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration
```

Copy wrapper scripts into /usr/local/bin and modify permisions.

```
sudo cp extMerge /usr/local/bin/extMerge
sudo cp extDiff /usr/local/bin/extDiff
sudo chmod +x /usr/local/bin/extMerge
sudo chmod +x /usr/local/bin/extDiff
```

### Setup GoLang

Create directory structure: `mkdir -p ~/code/go-workspace/{pkg,src,bin}`

### Setup Packer

### Setup Terraform

### Setup Docker

[https://docs.docker.com/compose/completion/#install-command-completion](https://docs.docker.com/compose/completion/#install-command-completion)


### Setup Vim

# Vim (~/.vim/autoload)
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

