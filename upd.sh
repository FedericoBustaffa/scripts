# !/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt autoremove
sudo apt autoclean

# upgrade pip packages and pip
pip install --upgrade pip
pip list --outdated --format=json > ~/scripts/packages.json
python3 ~/scripts/pip_upgrade.py
rm -rf ~/scripts/packages.json

