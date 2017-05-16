#!/bin/bash

sudo ls -al

# Config
wget https://raw.githubusercontent.com/7rin0/config-atom/master/config/config.cson
cp -fr config.cson ~/.atom

# Remove temporary files
rm -rf config.cson
