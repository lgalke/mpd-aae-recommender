#!/bin/bash
VENV_PATH=$( cd $(dirname "$0"); pwd -P)/venv
command -v git >/dev/null 2>&1 || { echo >&2 "Required package git is not installed.  Aborting."; exit 1; }
command -v virtualenv >/dev/null 2>&1 || { echo >&2 "Required package virtualenv is not installed.  Aborting."; exit 1; }
command -v python3 >/dev/null 2>&1 || { echo >&2 "Required package python3 is not installed.  Aborting."; exit 1; }

echo "[setup.bash] Fetching submodules..."
git submodule init
git submodule update

if [ ! -e $VENV_PATH ]; then
    echo "[setup.bash] Setting up virtual environment"
    virtualenv -p python3 $VENV_PATH
fi
echo $VENV_PATH

echo "[setup.bash] Installing aaerec and dependencies..."
source $VENV_PATH/bin/activate && cd aae-recommender && pip install -e .
