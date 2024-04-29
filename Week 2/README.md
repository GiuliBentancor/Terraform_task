WEEK 2

1- Create a linux virtual machine
    Use variables to store the azurerm_linux_virtual_machine resource fields – size and admin_username
    Use locals to store the azurerm_virtual_network resource fields – location and resource_group_name
    Use outputs to get the value of the azurerm_linux_virtual_machine attributes – id, private_ip_addresses, public_ip_address

![image](https://github.com/GiuliBentancor/Terraform_task/assets/54630519/d4788ac1-7d7e-43f5-b670-a7d2e793c054)
![image](https://github.com/GiuliBentancor/Terraform_task/assets/54630519/04564298-3247-4850-8b68-3ce0503749a9)
![image](https://github.com/GiuliBentancor/Terraform_task/assets/54630519/22e72788-4711-4f87-8f54-27c403481a8c)


2- Create 3 identical virtual machines using the count variable(same config as in challenge1)
    The name of the virtual machine should have the count.index value appended as a suffix. (example – myvm-1, myvm-2 and so on)

![image](https://github.com/GiuliBentancor/Terraform_task/assets/54630519/f3c92ad6-e093-476a-a2fc-a4dab7372a91)
![image](https://github.com/GiuliBentancor/Terraform_task/assets/54630519/d38737e3-c0ac-4774-8968-542bfd41f88b)
![image](https://github.com/GiuliBentancor/Terraform_task/assets/54630519/950677bb-cded-4c65-b706-a806d080658b)



3- Create different number of vms based on environment(same config as in challenge1)
    Create a map variable numberOfInstances to store the number of machines needed for each environment. Example (dev=1, test=3)
    Create a variable environment to store the name of the environment to be used
    Based on the value of the variable “environment”, the instance count should change (per example above, if you pass dev as the value to env, 1 vm should be created; if it is test, 3 should be created).

    -- dev

    ![image](https://github.com/GiuliBentancor/Terraform_task/assets/54630519/e8f649e7-960a-4fd6-9df2-f42e015e5253)
    ![image](https://github.com/GiuliBentancor/Terraform_task/assets/54630519/ba9ac01d-a851-438a-9d39-808d9632c00e)



    -- test 
    ![image](https://github.com/GiuliBentancor/Terraform_task/assets/54630519/10343666-f382-4c29-8472-0075f5d3f54d)
    ![image](https://github.com/GiuliBentancor/Terraform_task/assets/54630519/97f7f743-87e1-492f-af29-f091b3aa18c4)


4- Use terraform graph command to create a graph for the challenge 3 and visualize it.

![image](https://github.com/GiuliBentancor/Terraform_task/assets/54630519/ea4ae696-32f4-48af-85ca-536873ec692c)
