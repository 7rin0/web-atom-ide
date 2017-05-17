#!/bin/bash

sudo ls -al

# Get
wget -q https://atom.io/download/rpm -O atom.x86_64.rpm

# Install
sudo yum localinstall -y atom.x86_64.rpm

# Install dependencies
wget https://raw.githubusercontent.com/7rin0/config-atom/master/config/packages.list
apm install --packages-file packages.list

# Config
wget https://raw.githubusercontent.com/7rin0/config-atom/master/config/config.cson
cp config.cson ~/.atom

# Styles
wget https://raw.githubusercontent.com/7rin0/config-atom/master/config/styles.less
cp styles.less ~/.atom

# Remove temporary files
rm -rf atom.x86_64.rpm packages.list config.cson styles.less

# Run
atom
