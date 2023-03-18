# !/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt autoremove
sudo apt autoclean

# upgrade pip packages and pip
pip install --upgrade pip
pip list --outdated --format=json > packages.json
python3 pip_upgrade.py

