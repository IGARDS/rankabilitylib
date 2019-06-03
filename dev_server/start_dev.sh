#!/bin/bash
source $HOME/env/bin/activate
nohup jupyter lab  --ip=0.0.0.0 --port=9999 --LabApp.base_url=jupyter --notebook-dir $HOME >/tmp/jupyter.log 2>&1 &
