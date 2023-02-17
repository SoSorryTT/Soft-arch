provider "azurerm" {
    version = ">=3.40.0"
    features {
        virtual_machine {
            delete_os_disk_on_deletion = true
        }
    } 
}

provider "tls" {
    version = "3.1.0"
}

provider "kubernetes" {
    version = "2.1.0"
    host = azurerm_kubernetes_cluster.cluster.kube_config[0].host

    client_certificate = base64decode(azurerm_kubernetes_cluster.cluster.kube_config[0].client_certificate)
    client_key             = base64decode(azurerm_kubernetes_cluster.cluster.kube_config[0].client_key)
    cluster_ca_certificate = base64decode(azurerm_kubernetes_cluster.cluster.kube_config[0].cluster_ca_certificate)
}

provider "null" {
    version = "3.2.1"  
}

