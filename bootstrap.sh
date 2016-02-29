apt-get install zsh htop
apt-get install build-essential python-dev libffi-dev libssl-dev

curl https://bootstrap.pypa.io/get-pip.py | python
pip install -U "requests[security]"

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
