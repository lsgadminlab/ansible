#!/bin/sh
ls -la
pwd
ssh lab@lsglab.ddns.net -i keys/id_rsa "cat /etc/hosts"
ansible-playbook -vvv playbooks/caddy.yml