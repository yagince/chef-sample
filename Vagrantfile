# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu13.04"

  config.vm.network :private_network, ip: "192.168.33.10"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048", "--cpus", "2"]
  end
end
