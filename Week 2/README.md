WEEK 2

1- Create a linux virtual machine
    Use variables to store the azurerm_linux_virtual_machine resource fields – size and admin_username
    Use locals to store the azurerm_virtual_network resource fields – location and resource_group_name
    Use outputs to get the value of the azurerm_linux_virtual_machine attributes – id, private_ip_addresses, public_ip_address

2- Create 3 identical virtual machines using the count variable(same config as in challenge1)
    The name of the virtual machine should have the count.index value appended as a suffix. (example – myvm-1, myvm-2 and so on)

3- Create different number of vms based on environment(same config as in challenge1)
    Create a map variable numberOfInstances to store the number of machines needed for each environment. Example (dev=1, test=3)
    Create a variable environment to store the name of the environment to be used
    Based on the value of the variable “environment”, the instance count should change (per example above, if you pass dev as the value to env, 1 vm should be created; if it is test, 3 should be created).

4- Use terraform graph command to create a graph for the challenge 3 and visualize it.