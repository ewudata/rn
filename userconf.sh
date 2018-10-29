#!/bin/bash

echo "Installing nvm, node..."
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
echo "source /home/vagrant/.nvm/nvm.sh" >> /home/vagrant/.profile
source /home/vagrant/.profile

nvm install node -q
nvm alias default node
npm install -g -q react-native-cli
npm install -g -q expo-cli

echo "export env REACT_NATIVE_PACKAGER_HOSTNAME=192.168.2.108"