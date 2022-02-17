ls
cd app
ls
ansible --version
cd ..
ls
ansible-playbook install_nginx.yml 
ssh web
ansible ssh web
ssh 192.168.56.10
ssh 192.168.56.11
ansible-playbook install_nginx.yml 
ansible ping web
ansible web -m ping
echo -e "[web] \n192.168.56.10 ansible_connection=ssh ansible_ssh_user=vagrant ansible_ssh_pass=vagrant \n[db] \n192.168.56.11 ansible_connection=ssh ansible_ssh_user=vagrant ansible_ssh_pass=vagrant \n\n" | sudo tee --append /etc/ansible/hosts
ansible web -m ping
cat /etc/ansible/hosts
echo -e "[web] \n192.168.56.10 ansible_connection=ssh ansible_ssh_user=vagrant ansible_ssh_pass=vagrant \n[db] \n192.168.56.11 ansible_connection=ssh ansible_ssh_user=vagrant ansible_ssh_pass=vagrant \n\n" | sudo tee /etc/ansible/hosts
cat /etc/ansible/hosts
ansible web -m ping
exit
logout
logout
