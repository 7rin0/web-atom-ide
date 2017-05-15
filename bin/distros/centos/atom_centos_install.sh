#/bin/bash!

# Get
wget -qO https://atom.io/download/rpm -O atom.x86_64.rpm

# Install
sudo yum localinstall atom.x86_64.rpm > /dev/null 2>&1

# Install dependencies
wget https://raw.githubusercontent.com/7rin0/config-atom/master/config/packages.list
apm install --packages-file packages.list

# Config
wget https://raw.githubusercontent.com/7rin0/config-atom/master/config/config.cson
cp config.cson ~/.atom

# Remove temporary files
rm -rf atom-amd64.deb packages.list config.cson

# Run
atom
