terraform {                                                                                                                                                                                        
    backend "azurerm" {                                                                                                                                                                            
        resource_group_name = "tamopstf1"                                                                                                                                                          
        storage_account_name = "tfstatedevops"                                                                                                                                                     
        container_name = "terraform.tfstate"                                                                                                                                                       
    }                                                                                                                                                                                              
}                   
