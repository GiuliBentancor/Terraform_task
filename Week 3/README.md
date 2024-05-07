Part1

    Using Modules:
    Create two folders - my-custom-vm and root
    my-custom-vm - configuration of the custom vm - creates a vm with some default tags.
    root - this will call the my-custom-vm module
    Add the configurations for creating a linux virtual machine inside the my-custom-vm folder
     Add only below two resources' configuration in this module
        azurerm_network_interface
        azurerm_linux_virtual_machine
          add the below tags to the vm
              department: IT
              application: tf-level-up
    The custom module shoud accept the below as input variables
        size
        resource_group_name
        location
        subnet_id
        instance_name
        network_interface_name
    Create the below two outputs(to expose the attributes of the vm to the calling module)
        id
        private_ip_addresses
    Add the below configurations in the root folder
    Add the configurations for creating the below resources
        azurerm_virtual_network
        azurerm_subnet
    Create a module block to call the my-custom-vm module to create the vm instance; pass the   below arguments as inputs to the module block
        resource_group_name
        size
        location
        subnet_id (get this value from the azurerm_subnet resource created in this module)
        instance_name
        network_interface_name
        Get the outputs of the module and display them (id and private_ip_addresses) using output blocks
    
 ![image](https://github.com/GiuliBentancor/Terraform_task/assets/54630519/71015bd7-59a4-456a-a1a1-e04d3ff3aa21)
 ![image](https://github.com/GiuliBentancor/Terraform_task/assets/54630519/f21bf3c3-476a-46ad-aad1-fe7db6324e09)
 ![image](https://github.com/GiuliBentancor/Terraform_task/assets/54630519/454a905a-ff8f-4870-8374-97ba01afe33e)


Part2

    Using remote backend:
    Create a storage account in azure(manually from the portal)
    Create a blob container called "tfstate"        
    Update the terraform{} block of the root module from question1 to use azurerm backend
    Initialize the backend using terraform init and then plan,apply the configuration
    Once the apply step is completed, investigate the contents of the tfstate file created inside the blob container
    Destroy the resources using tf destroy command and verify if the tfstate file inside the blob container gets updated accordingly

 ![image](https://github.com/GiuliBentancor/Terraform_task/assets/54630519/5c04d3b0-c335-40ba-9cae-e8424ca21d49)
 ![image](https://github.com/GiuliBentancor/Terraform_task/assets/54630519/5e24da52-12b6-427a-aafa-0e6f95d914f1)

Part3


    Add terraform configuration to deploy a simple virtual network; a simple one just with the required parameters.
    Create variables to provide the below param of vnet resource
        name
        location
        resource_group_name
    Create two tfvars file as describe below
      dev.tfvars with the below values
        name: dev-network
        location: "East US"
        resource_group_name: 
      test.tfvars with the below values
        name: test-network
        location: "East US"
        resource_group_name:  (same as dev rg)

    Create two terraform workspaces(dev and test) using the terraform workspace command
    Switch to the dev workspace, plan/apply the configuration by referring to the dev.tfvars file(terraform plan -var-file=dev.tfvars)
    Switch to the test workspace, plan/apply the configuration by referring to the test.tfvars file(terraform plan -var-file=test.tfvars)
    Investigate the statefiles created for both the workspaces in the azure blob container
    Destroy the resources using terraform destroy from both the workspaces

![image](https://github.com/GiuliBentancor/Terraform_task/assets/54630519/f06a2788-806c-4df7-9668-d4345db44d34)
![image](https://github.com/GiuliBentancor/Terraform_task/assets/54630519/27af24e9-26ba-436e-b9e2-381e7eda7986)


