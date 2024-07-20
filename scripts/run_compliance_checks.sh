#!/bin/bash

echo "Running Terraform compliance checks..."
terraform validate terraform/

echo "Running Ansible playbook compliance checks..."
ansible-playbook --syntax-check ansible/playbook.yml

echo "Compliance checks completed."
