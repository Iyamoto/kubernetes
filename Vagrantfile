# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.synced_folder ".", "/vagrant", type: "virtualbox"
  config.vm.define :arch do |arch|
    arch.vm.box = "archlinux/archlinux"
    arch.vm.provider "virtualbox" do |v|
      v.memory = 1024
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]  	  
    end
    arch.vm.hostname = "arch"
    arch.vm.network "private_network", ip: "10.100.300.100"
	arch.vm.provision :shell, path: "scripts/bootstrap.sh"
  end
end
