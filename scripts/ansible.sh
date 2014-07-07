#!/bin/bash

# Install Ansible
apt-get install software-properties-common python-software-properties
apt-add-repository ppa:rquillo/ansible
apt-get update
apt-get install ansible

# Configure Ansible
rm /etc/ansible/hosts
echo "
[dbserver]
localhost           ansible_connection=local

[webservers]
localhost           ansible_connection=local
" > /etc/ansible/hosts
chown root:root /etc/ansible/hosts
chmod 644 /etc/ansible/hosts
