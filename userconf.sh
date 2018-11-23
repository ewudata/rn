#!/bin/bash

echo "Installing nvm, node..."
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
source /home/vagrant/.bashrc
source /home/vagrant/.nvm/nvm.sh

nvm install node
nvm alias default node
npm install -g react-native-cli
npm install expo-cli --global

echo "export env REACT_NATIVE_PACKAGER_HOSTNAME=192.168.0.101">>/home/vagrant/.profile

# sudo mount --bind  /home/vagrant/testApp/node_modules/ /home/vagrant/repo/sravastiabbey/node_modules/
# adb connect 192.168.112.101 (the emu title bar)
