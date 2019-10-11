#!/bin/bash 
apt-get update
apt-get install -y vim
apt-get install -y nginx
apt-get install -y curl

add-apt-repository -y ppa:deadsnakes/ppa
apt-get update
apt-get install -y python3
apt-get install -y python3-dev
apt-get install -y python3-venv
apt-get install -y build-essential autoconf libtool


# Get the pip install program
#PIP_SCRIPT=/tmp/get-pip.py
#curl https://bootstrap.pypa.io/get-pip.py -o $PIP_SCRIPT
#chmod +x $PIP_SCRIPT

# Install it for python3
#python3.6 $PIP_SCRIPT --user
#$HOME/.local/bin/pip3.6 install virtualenv

ENV_DIR=/data/env
python3.6 -m venv $ENV_DIR
source $ENV_DIR/bin/activate

pip install jupyter
pip install jupyterlab

pip install jupytext --upgrade

