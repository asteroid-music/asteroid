#!/bin/bash

sudo apt update && sudo apt upgrade

sudo apt-get install -y \
    vlc \
    git \
    ffmpeg \
    pulseaudio \
    mongodb

# start pulseaudio
pulseaudio -D

# start mongodb
sudo systemctl start mongodb

cd ~ 
git clone --branch master --depth=1 https://github.com/asteroid-music/asteroid-flask
git clone --branch master --depth=1 https://github.com/asteroid-music/asteroid-player

# need to precompile js; stub for now
# git clone --branch master --depth=1 https://github.com/asteroid-music/asteroid-js

python3 -m venv astenv
alias python="~/astenv/bin/python"
alias pip="~/astenv/bin/pip"

pip install -r asteroid-flask/requirements.txt
pip install -r asteroid-player/requirements.txt
