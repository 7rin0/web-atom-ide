#!/bin/bash

sudo ls -al

# Get
wget -q --show-progress https://atom.io/download/deb -O atom-amd64.deb

# Install
sudo dpkg --install atom-amd64.deb

# Install dependencies
wget https://raw.githubusercontent.com/7rin0/web-atom-ide/master/config/packages.list
apm install --packages-file packages.list

# Config
wget https://raw.githubusercontent.com/7rin0/web-atom-ide/master/config/config.cson
cp config.cson ~/.atom

# Styles
wget https://raw.githubusercontent.com/7rin0/web-atom-ide/master/config/styles.less
cp styles.less ~/.atom

# Remove temporary files
rm -rf atom.x86_64.rpm packages.list config.cson styles.less

# Run
atom
