#!/bin/bash
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get install ansible -y
sudo apt-get install tree -y

# `ssh 192.168.56.10` can access web vm (pass: "vagrant")
# `ssh 192.168.56.10` can access db vm (pass: "vagrant")

cd /etc/ansible

ansible web -m ping

echo -e "[web] \n192.168.56.10 ansible_connection=ssh ansible_ssh_user=vagrant ansible_ssh_pass=vagrant \n[db] \n192.168.56.11 ansible_connection=ssh ansible_ssh_user=vagrant ansible_ssh_pass=vagrant \n\n" | sudo tee --append /etc/ansible/hosts

# Add this to the /etc/ansible/hosts file, with the one-liner command above
# [web]
# 192.168.56.10 ansible_connection=ssh ansible_ssh_user=vagrant ansible_ssh_pass=vagrant

# [db]
# 192.168.56.11 ansible_connection=ssh ansible_ssh_user=vagrant ansible_ssh_pass=vagrant

ansible web -a "<linux command goes here>" #send/run commands over ansible to other machines
ansible web -a "uname -a"
ansible all -a "uname -a"


#---------------
#Copying /code/ folder bc folder linking in vagrant isn't working
#scp -i /home/manse/Sparta/103-Ansible/.vagrant/machines/controller/virtualbox/private_key -r code vagrant@192.168.56.10:~ 