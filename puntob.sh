#!/bin/bash
cat .ssh/id_rsa.pub
ssh vagrant@192.168.56.9
inet
inet 192.168.56.8 / AMN
inet 192.168.56.8/ AMN
inet 192.168.56.8
ip address show
ssh vagrant@192.168.56.9

# Aca me conecto por ssh a la otra VM

git clone https://github.com/upszot/UTN-FRA_SO_Ansible.git
ll
cd UTN-FRA_SO_Ansible/
ll
cd ejemplo_02
ll
nano inventory
ll
nano playbook.yml
sudo apt install ansible
ll
ansible-playbook -i inventory playbook.yml
sudo apt list --installed |grep apache
