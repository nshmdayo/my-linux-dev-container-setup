#!/bin/bash

sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y

npm install -g npm@latest
npm install -g @google/gemini-cli
npm install -g @google/jules
