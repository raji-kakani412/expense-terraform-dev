#!/bin/bash
dnf install ansible -y
cd /tmp
git clone https://github.com/raji-kakani412/Expense-ansible.git
cd Expense-ansible
ansible-playbook -i inventory.ini mysql.yaml
ansible-playbook -i inventory.ini backend.yaml
ansible-playbook -i inventory.ini frontend.yaml
