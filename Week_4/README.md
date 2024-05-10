    Use terraform cloud to provision a linux virtual machine in Azure
    
    Sign up for an account in Terraform Cloud if you don't have one already
    Create an organization in Terraform Cloud
    Login to your Terraform Cloud Organization from your Terraform CLI(in your local machine)
    Create a variable set in your Terraform Cloud Organization and configure the required variables for connecting to your azure subscription(ARM_CLIENT_ID, ARM_CLIENT_SECRET, ARM_TENANT_ID and ARM_SUBSCRIPTION_ID)
    Create the required terraform configuration files for creating a linux virtual machine
    Configure the terraform{} block in your terraform configuration to connect to your organization and configure a new workspace in the terraform.cloud.workspaces block
    If you have any variables defined in your configuration, create terraform cloud workspace variables and assign values for them (in the cloud ui).
    Run terraform plan command and see the plan in the terraform cloud worksapce(in the ui)
    Apply the configuration using terraform apply. Investigate the resources/outputs and state in the terrafomr cloud ui.

 ![image](https://github.com/GiuliBentancor/Terraform_task/assets/54630519/f9496ce9-f59c-4620-ad34-206f45038a39)
 ![image (2)](https://github.com/GiuliBentancor/Terraform_task/assets/54630519/631791fc-f272-490d-8c61-1d6e0a533b07)
 ![image (1)](https://github.com/GiuliBentancor/Terraform_task/assets/54630519/9801d9c9-713d-45eb-a192-b8699d617e76)


