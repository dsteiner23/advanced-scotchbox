# -*- mode: ruby -*-
# vi: set ft=ruby :


PROJECTNAME = ""

Vagrant.configure("2") do |config|

    config.vm.provider "virtualbox" do |v|
        v.name = PROJECTNAME
    end

    config.vm.box = "scotch/box"
    config.vm.network "private_network", ip: "192.168.33.10"
    config.vm.hostname = PROJECTNAME + ".dev"
    config.vm.synced_folder ".", "/var/www", :mount_options => ["dmode=777", "fmode=666"]

    config.vm.provision "shell", path: "provisioning/update.sh"
    config.vm.provision "shell", path: "provisioning/mysql.sh"
    config.vm.provision "shell", path: "provisioning/log.io/log-io.sh"
    config.vm.provision "shell", path: "provisioning/xdebug/xdebug.sh"

    # Optional NFS. Make sure to remove other synced_folder line too
    #config.vm.synced_folder ".", "/var/www", :nfs => { :mount_options => ["dmode=777","fmode=666"] }

end
