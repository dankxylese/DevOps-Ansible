
# -*- mode: ruby -*-
 # vi: set ft=ruby :
 
 # All Vagrant configuration is done below. The "2" in Vagrant.configure
 # configures the configuration version (we support older styles for
 # backwards compatibility). Please don't change it unless you know what
 
 # MULTI SERVER/VMs environment 
 #
 Vagrant.configure("2") do |config|
    # creating are Ansible controller
      config.vm.define "controller" do |controller|
        
       controller.vm.box = "bento/ubuntu-18.04"
       
       controller.vm.hostname = 'controller'
       
       controller.vm.network :private_network, ip: "192.168.56.12"
       #controller.vm.synced_folder "code", "/home/vagrant"

       # config.hostsupdater.aliases = ["development.controller"] 
       
      end 
    # creating forth VM called ctl  
      config.vm.define "ctl" do |ctl|
        
        ctl.vm.box = "bento/ubuntu-18.04"
       # downloading ubuntu 18.04 image
    
        ctl.vm.hostname = 'ctl'
        # assigning host name to the VM
        
        ctl.vm.network :private_network, ip: "192.168.56.13"
        #   assigning private IP

        ctl.vm.synced_folder "init", "/home/vagrant/code"
        #synced folder

        #config.hostsupdater.aliases = ["development.web"]
        # creating a link called development.web so we can access web page with this link instread of an IP   
            
      end
    # creating second VM called web  
      config.vm.define "web" do |web|
        
        web.vm.box = "bento/ubuntu-18.04"
       # downloading ubuntu 18.04 image
    
        web.vm.hostname = 'web'
        # assigning host name to the VM
        
        web.vm.network :private_network, ip: "192.168.56.10"
        #   assigning private IP

        #config.hostsupdater.aliases = ["development.web"]
        # creating a link called development.web so we can access web page with this link instread of an IP   
            
      end
      
    # creating third VM called db
      config.vm.define "db" do |db|
        
        db.vm.box = "bento/ubuntu-18.04"
        
        db.vm.hostname = 'db'
        
        db.vm.network :private_network, ip: "192.168.56.11"
        
        #config.hostsupdater.aliases = ["development.db"]     
      end
    
    
    end