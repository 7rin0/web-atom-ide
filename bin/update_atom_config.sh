#!/bin/bash

sudo ls -al

# Update Config
wget https://raw.githubusercontent.com/7rin0/web-atom-ide/master/config/config.cson
cp -fr config.cson ~/.atom

# Update styles.
wget https://raw.githubusercontent.com/7rin0/web-atom-ide/master/config/styles.less
cp -fr styles.less ~/.atom

# Remove previously added dependencies and flagged as deleted.
apm remove atom-commander
apm remove terminal-plus

# Remove temporary files
rm -rf config.cson styles.less
