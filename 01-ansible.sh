#!/bin/bash
# Stefan de Beer (Author)
# 19/01/2024 (Date)
# 0.0.2 (Version)

# Updating BASH & System before installing anything
sleep 2s
sudo apt update -yy
sleep 2s
sudo apt full-upgrade -yy
sleep 2s
sudo pkcon update -yy
sleep 2s
sudo apt autoremove -yy
sleep 2s

# Now that the system is up to date we install Python3 & PIP Package Manager
python3 --version
sleep 2s
python3 -m pip -V0
sleep 2s
sudo apt install python3
sleep 2s
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sleep 2s
python3 get-pip.py --user
sleep 2s

# We use PIP Python Package Installer to install Ansible
python3 -m pip install --user ansible
sleep 2s
python3 -m pip install --upgrade --user ansible
sleep 2s

# Remove the get-pip.py file after installation
sudo rm get-pip.py

# Updating BASH & System after installation is complete
sleep 2s
sudo apt update -yy
sleep 2s
sudo apt full-upgrade -yy
sleep 2s
sudo pkcon update -yy
sleep 2s
sudo apt autoremove -yy
sleep 2s

# Reboot the system for Ansible to work
reboot
