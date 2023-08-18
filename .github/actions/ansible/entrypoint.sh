#!/bin/sh
ls -la
pwd
ping lsglab.ddns.net -c 4
ansible-playbook -vvv playbooks/caddy.yml