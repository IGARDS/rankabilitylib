#!/bin/bash 
sudo apt-get update
sudo apt-get install -y vim
sudo apt-get install -y nginx
sudo apt-get install -y curl

sudo add-apt-repository -y ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install -y python3.6

# Get the pip install program
PIP_SCRIPT=/tmp/get-pip.py
curl https://bootstrap.pypa.io/get-pip.py -o $PIP_SCRIPT
chmod +x $PIP_SCRIPT

# Install it for python3
python3.6 $PIP_SCRIPT --user
$HOME/.local/bin/pip3.6 install virtualenv

ENV_DIR=$HOME/env
python3.6 -m virtualenv $ENV_DIR
source $ENV_DIR/bin/activate

pip install jupyter
pip install jupyterlab

pip install jupytext --upgrade

