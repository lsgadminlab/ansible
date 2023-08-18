#!/bin/sh
ls -la
pwd
curl https://lcarilla.de/
ansible-playbook -vvv playbooks/caddy.yml