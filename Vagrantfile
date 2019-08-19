$my_provision = <<MY_PROVISION
apt-get update -qq
apt-get install -y rsync
MY_PROVISION

Vagrant.configure("2") do |config|
  config.vm.box = "generic/ubuntu1804"
  config.vm.synced_folder ".", "/vagrant", disabled: true

  config.vm.provider "virtualbox" do |vb|
    vb.gui    = false
    vb.memory = 1024 * 2
    vb.cpus   = 2
  end

  config.vm.define "rsync-sunabako" do |c|
    c.vm.hostname = "rsync-sunabako"
    c.vm.network "private_network", ip: "192.168.33.21"
    c.vm.provision "shell", inline: $my_provision
  end
end
