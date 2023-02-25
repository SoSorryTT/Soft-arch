terraform {
    # Uncomment this to get it running in the CD pipeline.
    # backend "azurerm" {
    #     resource_group_name  = flixtube
    #     storage_account_name = sosorryttstorage
    #     container_name       = "terraform"
    #     key                  = "terraform.tfstate"
    # }
}