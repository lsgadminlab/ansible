#!/bin/sh
ls -la
pwd
adduser ansible
cp -r . /home/ansible
su ansible << EOF
    cd
    mkdir .ssh
    echo "Host bastion
    HostName lsglab.ddns.net
    User lab
    Port 22
    IdentityFile /home/ansible/keys/id_rsa
        " > ~/.ssh/config
    cat /home/ansible/keys/id_rsa
    cat .ssh/config
    ssh lab@bastion -o StrictHostKeyChecking=no "echo duh this is actually needed cuz otherwise host key wont be aded bruhf"
    ansible-playbook -vvv playbooks/caddy.yml
EOF
