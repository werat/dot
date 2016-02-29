#!/usr/bin/env bash

set -xe

apt-get update
apt-get install zsh git htop -y
apt-get install build-essential python-dev libffi-dev libssl-dev -y

curl https://bootstrap.pypa.io/get-pip.py | python
pip install -U "requests[security]"

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
