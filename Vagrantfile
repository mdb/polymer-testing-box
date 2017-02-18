# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.network 'forwarded_port', guest: 5900, host: 5901

  config.vm.provision :ansible do |ansible|
    ansible.playbook = 'playbook.yml'
  end

  # bump up the allocated video memory beyond the 12MB VirtualBox default
  # this seemingly allows more successful Flash video playback w/out crashing
  config.vm.provider :virtualbox do |vb|
    vb.customize ['modifyvm', :id, '--vram', '30']
    vb.memory = 1024
    vb.cpus = 2
  end
end
