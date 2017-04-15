#/bin/bash!

# Get
wget -q --show-progress https://atom.io/download/deb -O atom-amd64.deb
# Install
sudo dpkg --install atom-amd64.deb > /dev/null 2>&1
# Install dependencies
apm install --packages-file packages.list
# Config
cp config.cson ~/.atom/
# Run
atom