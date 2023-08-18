#!/bin/sh
ls -la
pwd
echo "
Host bastion
    HostName lsglab.ddns.net
    User lab
    IdentityFile /home/harald/Programming/lab/lab-ansible/keys/id_rsa" > .ssh/config
ansible-playbook -vvv  playbooks/caddy.yml