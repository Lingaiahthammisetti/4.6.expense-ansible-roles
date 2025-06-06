#!/bin/bash
dnf install ansible -y
cd /tmp
git clone https://github.com/Lingaiahthammisetti/4.6.expense-ansible-roles.git
cd 4.6.expense-ansible-roles
ansible-playbook db.yaml
ansible-playbook db.yaml #Run twice db.yaml
ansible-playbook backend.yaml
ansible-playbook frontend.yaml