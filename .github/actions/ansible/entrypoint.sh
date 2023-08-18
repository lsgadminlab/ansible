#!/bin/sh
ls -la
pwd
ping google.com -c 4
ping lcarilla.de -c 4
ping lsglab.ddns.net -c 4
ansible-playbook -vvv playbooks/caddy.yml