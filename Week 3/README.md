Part1
    From root module use my-custom-vm module to creata a nic and a vm.
    Use the tags, variables and outputs indicated.

Part2

    Using remote backend:
    Create a storage account in azure(manually from the portal)
    Create a blob container called "tfstate"
    Update the terraform{} block of the root module from question1 to use azurerm backend
    Initialize the backend using terraform init and then plan,apply the configuration
    Once the apply step is completed, investigate the contents of the tfstate file created inside the blob container
    Destroy the resources using tf destroy command and verify if the tfstate file inside the blob container gets updated accordingly

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