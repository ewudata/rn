# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "bento/ubuntu-18.04"
  config.vm.network "forwarded_port", guest: 8881, host: 8881
  config.vm.network "private_network", ip: "192.168.18.18"
  # config.vm.synced_folder "../data", "/vagrant_data"

  config.vm.provider "virtualbox" do |v|
    v.name = "native"
    v.linked_clone = true
    v.gui = true
    v.cpus = 1
    v.memory = "4096"
  end
 
  config.vm.provision "shell", inline: <<-SHELL
    echo "Provisioning Virtual Machine..."
    apt update
    # sudo apt install ubuntu-desktop -y
    apt install --no-install-recommends ubuntu-desktop -y

    echo "Installing developer packages..."
    apt install build-essential curl vim wget -y -q
    apt install git -y -q
    apt install openjdk-8-jre openjdk-8-jdk -y -q
    snap install android-studio --classic
  SHELL

  config.vm.provision "shell", privileged: "false", inline: <<-SHELL
    echo "Installing Node and NVM..."
    cd /home/vagrant
    curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh -o install_nvm.sh
    bash install_nvm.sh
    source ~/.profile
    nvm install 8.12.0
    nvm use 8.12.0

  SHELL
end

# config.vm.provision "shell", inline: "echo Installing build tools, Android SDK and NDK..."
# config.vm.provision "shell", path: "provision.sh"
# config.vm.provision "shell", inline: "echo Installation complete"
