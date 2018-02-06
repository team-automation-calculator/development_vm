# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.box = 'ubuntu/xenial64'

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.provider 'virtualbox' do |vb|
    vb.gui = true
    vb.memory = '2048'
    vb.cpus = '2'
  end

  config.vm.provision 'shell', path: 'scripts/provision.sh'
end
