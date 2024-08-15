#!/usr/bin/env bash
set -euf -o pipefail

ASDF_PLUGINS=(
'checkov==3.2.223' #checkov asdf script bug, have to set version.
'nodejs==latest'
'opa==latest'
'opentofu==latest'
'packer==latest'
'python==latest'
'shellcheck==latest'
'shfmt==latest'
'terraform==latest'
'terraform-docs==latest'
'tf-summarize==latest'
)

for plugin in ${ASDF_PLUGINS[@]}
do
    plugin_array=(${plugin//==/ })
    plugin_name="${plugin_array[0]}"
    plugin_version="${plugin_array[1]}"
    asdf plugin add "${plugin_name}"
    asdf install "${plugin_name}" "${plugin_version}"
    asdf global "${plugin_name}" "${plugin_version}"
done

asdf current