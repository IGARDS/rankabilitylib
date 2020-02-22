#!/bin/bash
export PORT=$1
echo "Starting on PORT:"$PORT
source /data/env/bin/activate

export GUROBI_HOME="/usr/local/gurobi811/linux64"
export PATH="${PATH}:${GUROBI_HOME}/bin" 
export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${GUROBI_HOME}/lib" 

nohup jupyter lab  --ip=0.0.0.0 --port=$PORT --LabApp.base_url=jupyter --notebook-dir /disk >/tmp/jupyter_$PORT.log 2>&1 &
