#!/bin/sh
ls -la
pwd
echo "
Host bastion
    HostName lsglab.ddns.net
    User lab
    IdentityFile /github/workspace/keys/id_rsa" > .ssh/config
#ansible-playbook -vvv  playbooks/caddy.yml