#!/bin/sh
ls -la
pwd
adduser ansible
cp -r . /home/ansible
su ansible << EOF
    cd
    mkdir .ssh
    echo "
Host bastion
    HostName lsglab.ddns.net
    User lab
    Port 22
    IdentityFile /github/workspace/keys/id_rsa
        " > .ssh/config
    cat .ssh/config
    #ansible-playbook -vvv playbooks/caddy.yml
EOF
