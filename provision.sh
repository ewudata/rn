
#!/bin/bash

echo "Provisioning Virtual Machine..."
sudo ufw disable
apt-get update
# sudo apt install ubuntu-desktop -y
# apt-get install --no-install-recommends ubuntu-desktop -y

echo "Installing developer packages..."
apt-get install build-essential curl vim -y -q
apt-get install git -y -q

echo "Installing java, android and node..."
apt-get install openjdk-8-jre openjdk-8-jdk -y -q
apt-get install adb -y -q
