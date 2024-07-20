# Compliance as Code
This repository demonstrates the concept of "Compliance as Code" using tools like Terraform, Ansible, and custom scripts to automate compliance checks and ensure that infrastructure adheres to organizational policies and standards.

## Repository Structure

- `terraform/`: Contains Terraform code for infrastructure provisioning.
- `ansible/`: Contains Ansible playbooks for configuration management.
- `scripts/`: Contains scripts to run compliance checks.

## Getting Started

To get started with this demonstration, follow the instructions below:

### Prerequisites

- Terraform
- Ansible
- Bash

### Running the Compliance Checks

1. Clone the repository:
    ```sh
    git clone https://github.com/davraops/compliance-as-code-demo.git
    cd compliance-as-code-demo
    ```

2. Run the compliance checks script:
    ```sh
    ./scripts/run_compliance_checks.sh
    ```

## Terraform

Example Terraform configuration (`main.tf`):

```hcl
provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "example" {
  bucket = "compliance-as-code-demo"
  acl    = "private"

  tags = {
    Name        = "compliance-as-code-demo"
    Environment = "Dev"
  }
}
```

## Ansible

Example Ansible playbook (`playbook.yml`):

```yaml
- hosts: localhost
  tasks:
    - name: Ensure NTP is installed
      yum:
        name: ntp
        state: present

    - name: Ensure NTP service is running
      service:
        name: ntpd
        state: started
        enabled: yes
```

## Scripts

Example compliance checks script (`run_compliance_checks.sh`):

```sh
#!/bin/bash

echo "Running Terraform compliance checks..."
terraform validate terraform/

echo "Running Ansible playbook compliance checks..."
ansible-playbook --syntax-check ansible/playbook.yml

echo "Compliance checks completed."
```

This repository demonstrates the basics of "Compliance as Code" by using Terraform and Ansible for infrastructure and configuration management, along with custom scripts to automate compliance checks. Feel free to explore and modify the examples to fit your needs!
