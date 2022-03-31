# 1. Create a user role in AWS that you will use to access the infrastructure and download access_key and Secret key and use it to create a terraform_aws_credential profile from your command line by using aws configure.  Note make sure awscli is installed so you can have access to aws resources from command line
# 2. Create an AWS provider using terraform and the config and credentials profile you created and add your region and some other requirements for the provider.
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs

# 3. follow the link below to create AWS VPC resource using terraform:
# Resource:aws_vpc
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc

#  After creating the resource use 
# terraform init - to initialise the code
# terraform fmt - to format the code
# terraform apply - to apply the code

# Repeat the same process apart from init after creating any resource

# 4. Create an internet gateway to allow communication between your VPC and the internet by using the link below.

# Resource: aws_internet_gateway
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway

# 5. Create two public subnet and two private subnet in AWS inside the VPC we created using terraform and create appropriate subnet task that EKS managed kubernetes cluster can use to discover and create public and private loadbalancers 
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet


# 6. Created two NAT gateways using terraform that will be used to enable instances in private subnets to connect to the internet and also allocate elastic public IP address for those nat gateways.
# Resource: aws_nat_gateway 
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway

# Resource: aws_eip
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip

# 7. Created with terraform two types of routing tables PUBLIC ROUTE TABLE and PRIVATE ROUTE TABLE. route table contains set of rules called routes, that are used to determine where network traffic from subnet or gateway are directed.
# Resource: aws_route_table
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table

# 8.Created terraform code route table association that is used to associate subnets 
# Resource: aws_route_table_association
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association

# 9. Created a terraform code for deploying an EKS cluster in AWS that used the VPC created earlier with two nodes running in the private subnets using instance types of t3a.large
# Resource: aws_iam_role
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_cluster


