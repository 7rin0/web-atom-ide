#!/bin/bash

sudo ls -al

# Config
wget https://raw.githubusercontent.com/7rin0/web-atom-ide/master/config/config.cson
cp -fr config.cson ~/.atom

# Remove temporary files
rm -rf config.cson
