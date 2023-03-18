# !/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt autoremove
sudo apt autoclean

# upgrade pip packages and pip
python3 pip_upgrade.py

