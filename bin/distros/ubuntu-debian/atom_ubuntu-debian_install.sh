#/bin/bash!

# Get
wget -q --show-progress https://atom.io/download/deb -O atom-amd64.deb

# Install
sudo dpkg --install atom-amd64.deb > /dev/null 2>&1

# Install dependencies
wget https://raw.githubusercontent.com/7rin0/config-atom/master/config/packages.list
apm install --packages-file packages.list

# Config
wget https://raw.githubusercontent.com/7rin0/config-atom/master/config/config.cson
cp config.cson ~/.atom/

# Remove temporary files
rm -rf atom-amd64.deb packages.list config.cson

# Run
atom
