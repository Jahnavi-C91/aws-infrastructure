# AWS Infrastructure

This repository contains Terraform and Ansible scripts to set up and manage AWS infrastructure. It includes configurations for EC2 instances, security groups, S3 buckets, and more, to ensure an efficient and scalable infrastructure.

## Files and Directories

- `terraform/`: Contains Terraform configurations for setting up AWS resources.
  - `main.tf`: Main Terraform configuration file.
  - `variables.tf`: Contains variables used in the Terraform configuration.
  - `outputs.tf`: Specifies outputs for the Terraform configuration.
- `ansible/`: Contains Ansible playbooks and inventory for configuring the EC2 instances.
  - `playbook.yml`: Ansible playbook for configuring the EC2 instances.
  - `inventory`: Inventory file for Ansible.
- `scripts/`: Contains custom scripts for additional configurations.
  - `install_dependencies.sh`: Script to install necessary dependencies on EC2 instances.

## Usage

### Prerequisites

- Terraform and Ansible installed on your local machine.
- AWS account with the necessary permissions.

### Setup

1. Clone the repository to your local machine:

    ```bash
    git clone https://github.com/Jahnavi-C91/aws-infrastructure.git
    cd aws-infrastructure
    ```

2. Navigate to the `terraform` directory and initialize Terraform:

    ```bash
    cd terraform
    terraform init
    ```

3. Customize the variables in `variables.tf` as per your environment requirements.

4. Apply the Terraform configuration to set up the infrastructure:

    ```bash
    terraform apply
    ```

5. Navigate to the `ansible` directory and run the Ansible playbook to configure the EC2 instances:

    ```bash
    cd ../ansible
    ansible-playbook -i inventory playbook.yml
    ```

## File Descriptions

### `terraform/main.tf`

This file contains the main Terraform configuration to set up AWS resources like EC2 instances and S3 buckets.

### `terraform/variables.tf`

This file contains the variables used across the Terraform configuration files. It allows for easier customization and reusability of the configurations.

### `terraform/outputs.tf`

This file specifies the outputs for the Terraform configuration, such as the IDs of created resources. These outputs can be used for further automation and integration.

### `ansible/playbook.yml`

This file contains the Ansible playbook to configure the EC2 instances, including the installation of necessary dependencies and setting up configurations.

### `ansible/inventory`

This file contains the inventory information for Ansible, specifying the hosts and connection details.

### `scripts/install_dependencies.sh`

This file contains a custom script to install necessary dependencies on the EC2 instances.

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
