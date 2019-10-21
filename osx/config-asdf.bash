#!/usr/local/bin/bash

# installing asdf plugins
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf plugin-add helm https://github.com/Antiarchitect/asdf-helm.git
asdf plugin-add helmfile https://github.com/feniix/asdf-helmfile.git
asdf plugin-add kubectl https://github.com/Banno/asdf-kubectl.git
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin-add packer https://github.com/Banno/asdf-hashicorp.git
asdf plugin-add python https://github.com/danhper/asdf-python.git
asdf plugin-add shellcheck https://github.com/luizm/asdf-shellcheck.git
asdf plugin-add terraform https://github.com/Banno/asdf-hashicorp.git
asdf plugin-add terraform-docs https://github.com/looztra/asdf-terraform-docs.git
asdf plugin-add terraform-validator https://github.com/looztra/asdf-terraform-validator.git
asdf plugin-add tflint https://github.com/RykHawthorn/asdf-tflint.git

# import OpenGPG keys
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

# install latest versions
#
# https://golang.org/doc/devel/release.html
# https://github.com/helm/helm/releases
# https://github.com/roboll/helmfile/releases
# https://github.com/kubernetes/kubectl/releases
# https://nodejs.org/en/download/releases/
# https://releases.hashicorp.com/terraform/
# https://github.com/segmentio/terraform-docs/releases
# https://github.com/thazelart/terraform-validator/releases
# https://github.com/wata727/tflint/releases
# https://releases.hashicorp.com/packer/
# https://www.python.org/downloads/
# https://github.com/koalaman/shellcheck/releases

asdf install golang 1.13
asdf install helm 2.14.3
asdf install helmfile 0.85.0
asdf install kubectl 1.15.3
asdf install nodejs 10.16.3
asdf install python 3.7.4 2.7.15
asdf install shellcheck 0.7.0
asdf install terraform 0.11.14
asdf install terraform-docs 0.6.0
asdf install terraform-validator 3.1.0
asdf install tflint 0.11.1

# set globals

asdf global golang 1.13
asdf global Helm 2.14.3
asdf global Helmfile 0.85.0
asdf global Kubectl 1.15.3
asdf global nodejs 10.16.3
asdf global Python 3.7.4 2.7.15
asdf global shellcheck 0.7.0
asdf global terraform 0.11.14
asdf global terraform-docs 0.6.0
asdf global terraform-validator 3.1.0
asdf global tflint 0.11.1

# current
asdf current