# Terraform code for IAAC

### Overview
This Terraform project automates the deployment of a web application infrastructure on AWS. It includes the creation of a Virtual Private Cloud (VPC), subnets, security groups, an RDS instance, Elastic Beanstalk application environments, and more.

### Key Components

1. **VPC and Subnets**
   - Creates a VPC with public and private subnets across multiple availability zones.
   - Public subnets are used for public-facing resources like the bastion host.
   - Private subnets are used for backend resources like RDS.

2. **Security Groups**
   - Defines security groups to control inbound and outbound traffic.
   - Separate security groups for the bastion host, RDS, and application instances.

3. **EC2 Instances**
   - Deploys EC2 instances for the bastion host.
   - Configures the instances with SSH keys and attaches security groups.

4. **Elastic Beanstalk**
   - Sets up an Elastic Beanstalk application and environment for deploying the web application.
   - Configures the environment to use a specific solution stack and attaches necessary IAM roles.

5. **RDS Instance**
   - Provisions an RDS instance for the application's database.
   - Configures database parameters like instance class, engine version, username, and password.

6. **ElasticCache**
   - Configures an ElasticCache cluster for caching purposes.
   - Ensures the correct parameter group family is used.

7. **IAM Roles and Policies**
   - Creates IAM roles and policies required for Elastic Beanstalk and EC2 instances.
   - Attaches necessary permissions to the roles.

8. **Provisioners and Bootstrap Scripts**
   - Uses provisioners to execute scripts on the EC2 instances for initial setup.
   - Installs necessary software and clones the application repository.


### Summary
The project efficiently manages the deployment of a web application infrastructure on AWS by leveraging Terraform's capabilities. It includes the setup of networking, security, compute, database, and caching resources, ensuring a robust and scalable environment for the application. The use of variables allows for flexible configuration and easy adjustments to the infrastructure setup.
