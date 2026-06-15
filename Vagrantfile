Vagrant.configure("2") do |config|

  config.vm.box = "bento/ubuntu-24.04"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
    vb.cpus = 1
  end
  
  config.vm.synced_folder ".", "/vagrant", disabled: true

  config.vm.define "cloud-1" do |server|
    server.vm.hostname = "cloud-1"
    server.vm.network "private_network", ip: "192.168.56.110"
  end

end
