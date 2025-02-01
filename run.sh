#!/bin/bash

sudo apt update
sudo apt install tmux curl nano detox htop ssh wget p7zip-full unrar ttyd -y

curl https://ollama.ai/install.sh | sudo sh
tmux new -d "OLLAMA_HOST=0.0.0.0:8001 OLLAMA_MODELS=/ollama ollama serve"
