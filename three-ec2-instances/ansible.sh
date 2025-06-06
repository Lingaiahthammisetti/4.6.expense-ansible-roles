#!/bin/bash
dnf install ansible -y
cd /tmp
git clone https://github.com/Lingaiahthammisetti/4.6.expense-ansible-roles.git
cd 4.6.expense-ansible-roles
ansible-playbook -i inventory.ini db.yaml
ansible-playbook -i inventory.ini db.yaml #Run twice db.yaml
ansible-playbook -i inventory.ini backend.yaml
ansible-playbook -i inventory.ini frontend.yaml