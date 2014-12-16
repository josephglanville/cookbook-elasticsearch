# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'

NUM_NODES = 3
NODE_MEM = 1024

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Would be great if there was an official box with both
  # VMWare Fusion and VirtualBox support
  config.vm.box = 'nitrous-io/trusty64'
  config.omnibus.chef_version = :latest

  (0..NUM_NODES-1).each do |i|
    config.vm.define "node#{i}" do |node|
      node.vm.network :private_network, ip: "192.168.0.1#{i}"
      node.vm.provider :virtualbox do |vb|
        vb.customize ['modifyvm', :id, '--memory', NODE_MEM]
      end

      node.vm.provider :vmware_fusion do |v|
        v.vmx['memsize'] = NODE_MEM
      end

      node.vm.provision 'chef_solo' do |chef|
        chef.add_recipe 'elasticsearch'
      end
    end
  end
end
