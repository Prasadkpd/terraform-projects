# EKS Cluster with VPC

This project sets up an Amazon EKS (Elastic Kubernetes Service) cluster along with a VPC (Virtual Private Cloud) using Terraform. The configuration includes creating necessary subnets, security groups, and other resources required for the EKS cluster.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
- AWS CLI configured with appropriate credentials.
- An AWS account with necessary permissions to create EKS and VPC resources.

## Project Structure

```
eks-cluster-with-vpc/
├── vpc.tf
├── variables.tf
├── security-group.tf
├── outputs.tf
└── README.md
```

- `vpc.tf`: Contains the configuration for the VPC and its subnets.
- `variables.tf`: Defines the input variables for the Terraform configuration.
- `security-group.tf`: Configures the security groups for the EKS cluster.
- `outputs.tf`: Specifies the outputs of the Terraform configuration.
- `README.md`: Documentation for the project.

## Usage

1. **Initialize Terraform**: Run the following command to initialize the Terraform configuration.

    ```sh
    terraform init
    ```

2. **Plan the Infrastructure**: Generate an execution plan to see what changes will be made.

    ```sh
    terraform plan
    ```

3. **Apply the Configuration**: Apply the Terraform configuration to create the resources.

    ```sh
    terraform apply
    ```

4. **Destroy the Infrastructure**: If you want to destroy the created resources, run:

    ```sh
    terraform destroy
    ```

## Variables

The following variables are defined in `variables.tf`:

- `kubernetes_version`: The version of Kubernetes to use for the EKS cluster. Default is `1.27`.
- `vpc_cidr`: The CIDR block for the VPC. Default is `10.0.0.0/16`.
- `aws_region`: The AWS region where the resources will be created. Default is `us-west-1`.

## Outputs

The following outputs are defined in `outputs.tf`:

- `cluster_id`: The ID of the EKS cluster.
- `cluster_endpoint`: The endpoint for the EKS control plane.
- `cluster_security_group_id`: The security group IDs attached to the cluster control plane.
- `region`: The AWS region where the resources are created.
- `oidc_provider_arn`: The ARN of the OIDC provider for the EKS cluster.

## Notes

- Ensure that your AWS credentials are configured properly before running the Terraform commands.
- Review the Terraform plan output carefully before applying the configuration to avoid any unintended changes.

## License

This project is licensed under the MIT License.