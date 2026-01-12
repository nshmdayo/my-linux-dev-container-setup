#!/bin/bash

sudo apt update -y && sudo apt install -y gpg sudo wget curl
sudo install -dm 755 /etc/apt/keyrings
wget -qO - https://mise.jdx.dev/gpg-key.pub | gpg --dearmor | sudo tee /etc/apt/keyrings/mise-archive-keyring.gpg 1> /dev/null
echo "deb [signed-by=/etc/apt/keyrings/mise-archive-keyring.gpg arch=arm64] https://mise.jdx.dev/deb stable main" | sudo tee /etc/apt/sources.list.d/mise.list
sudo apt update -y && sudo apt install -y mise podman neovim gh && sudo apt upgrade -y

echo 'eval "$(mise activate bash)"' >> ~/.bashrc # bash_profile is better
source ~/.bashrc
mise doctor

cd
mise install node@latest
mise use node@latest
mise install go@latest
mise use go@latest

npm install -g npm@latest
npm install -g @google/gemini-cli
npm install -g @google/jules
