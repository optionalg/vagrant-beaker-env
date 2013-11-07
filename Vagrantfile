# -*- mode: ruby -*-
# vi: set ft=ruby :


ssh_key_inline = <<EOD
if ! [ -d /root/.ssh ]; then mkdir /root/.ssh; fi
cp /vagrant/keys/beaker.pub /root/.ssh/authorized_keys
EOD

pkgs = <<EOD
yum -y install ntpdate curl
EOD

Vagrant.configure("2") do |config|

  config.vm.define :master do |config|
    config.vm.box = "centos-6-i386"
    config.vm.network :private_network, :ip => '10.20.1.95'

    config.vm.provision :hosts
    config.vm.provision(:shell) { |shell| shell.inline = ssh_key_inline }
    config.vm.provision(:shell) { |shell| shell.inline = pkgs }
  end

  config.vm.define :agent do |config|
    config.vm.box = "centos-6-i386"
    config.vm.network :private_network, :ip => '10.20.1.96'

    config.vm.provision :hosts
    config.vm.provision(:shell) { |shell| shell.inline = ssh_key_inline }
    config.vm.provision(:shell) { |shell| shell.inline = pkgs }
  end
end
