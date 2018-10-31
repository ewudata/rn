#!/bin/bash
source /home/vagrant/.nvm/nvm.sh
nvm install node
nvm alias default node
npm install -g react-native-cli
npm install expo-cli --global