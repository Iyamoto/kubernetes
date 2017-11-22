# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.synced_folder ".", "/vagrant", type: "virtualbox"
  config.vm.define :kube do |arch|
    arch.vm.box = "archlinux/archlinux"
    arch.vm.provider "virtualbox" do |v|
      v.memory = 2048
      v.cpus = 2
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]  	  
    end
    arch.vm.hostname = "kube"
    arch.vm.network "private_network", ip: "10.100.100.10"
	arch.vm.provision :shell, path: "scripts/bootstrap.sh"
  end
end
