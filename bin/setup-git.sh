#!/usr/bin/env bash

set -euo pipefail

#User
git config --global user.name "Paul Brice"
git config --global user.email pauljbrice@gmail.com
#Submodule
git config --global status.submoduleSummary true
git config --global diff.submodule log
git config --global fetch.recurseSubmodules on-demand
#HTTP
git config --global http.followRedirects true
git config --global http.userAgent curl/7.58.0
#Filter LFS
git config --global filter.lfs.clean git-lfs clean
git config --global filter.lfs.smudge git-lfs smudge
git config --global filter.lfs.process git-lfs filter-process
git config --global filter.lfs.required true
