export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_VIRTUALENV=$HOME/.local/bin/virtualenv
source $HOME/.local/bin/virtualenvwrapper.sh

#sudo apt install crossbuild-essential-arm64
export ARCH=arm64
export CROSS_COMPILE=aarch64-linux-gnu-
