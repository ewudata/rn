# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "bento/ubuntu-18.04"
  config.vm.network "forwarded_port", guest: 19000, host: 19000
  config.vm.network "forwarded_port", guest: 19001, host: 19001
  config.vm.network "forwarded_port", guest: 19002, host: 19002
  config.vm.network "private_network", ip: "192.168.18.18"
  config.vm.synced_folder "../../repo", "/home/vagrant/repo"

  config.vm.provider "virtualbox" do |v|
    v.name = "native"
    v.linked_clone = true
    # v.gui = true
    v.cpus = 1
    v.memory = "1024"
    v.customize ['modifyvm', :id, '--clipboard', 'bidirectional'] 
    v.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/repo", "1"]
  end
 
  config.vm.provision "shell", path: "provision.sh"
  config.vm.provision "shell", privileged: false, path: "userconf.sh"
end

# config.vm.provision "shell", inline: "echo Installing build tools, Android SDK and NDK..."
# config.vm.provision "shell", path: "provision.sh"
# config.vm.provision "shell", inline: "echo Installation complete"
