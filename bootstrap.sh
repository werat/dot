#!/usr/bin/env bash

set -xe

sudo apt-get update && sudo apt-get install -y \
  build-essential python-dev libffi-dev libssl-dev \
  libxml2-dev libxslt-dev \
  zsh git htop

# install latest versin of pip
curl https://bootstrap.pypa.io/get-pip.py | sudo python
# install some python libraries
sudo pip install -U "requests[security]" httpie virtualenv

# install oh-my-zsh (without sudo!)
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
