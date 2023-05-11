# Provisioning AWS EC2 instance using Terraform

Imagine repetitive and time-consuming tasks such as provisioning servers or databases or VM being manage using a software tool. This is possible with `Terraform` an open source platform developed by Hashicorp, which enables you provision infrastructure as code. 

My goal is to share how-to deploy an AWS EC2 with Terraform. This is a sample code. Not included: VPC, or security groups.  

## Tools & setup
- Computer
- AWS account & an IAM user with admin rights but not console access
- AWS CLI 
- VSCode
- Terraform

 ### Terraform configuration 
Consolidating all code in <mark>main.tf</mark> file is good when practice or as an example code like this one:

```

  terraform_EC2/
  |-- main.tf
  |-- variables.tf
  |-- terraform.tfvars
  |-- README.md

```
<mark>Important:</mark> Terraform by default stored state files in a local file named `terraform.tfstate`. But Terraform recommend to store in secure and encrypted location such as: Terraform Cloud.   

## Terraform Commands used

- `terraform` : checks installation was successfully completed.
  
-  `terraform init`: Initialization of a working directory 

- `terraform validate`: check or verify the configuration is syntactically valid and consistent.
  
- `terraform fmt`: For readability or to style configuration:
  
- `terraform plan`: to creates an execution plan and preview the changes. 
  
- `terraform apply` - execute the actions propose. To apply without confirmation add `auto-approve`. 
  
- `terraform destroy` - destroy all objects managed by the configuration. 
  
## Resources

- [Terraform](https://registry.terraform.io/providers/hashicorp/aws/latest)
- [Terraform Best Practices](https://www.terraform-best-practices.com/)
- [Learn Terraform by Building a Dev Environment - FreecodeCamp.org](https://www.youtube.com/watch?v=iRaai1IBlB0)



