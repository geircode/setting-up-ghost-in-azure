#!/bin/bash
BASEDIR=$(dirname "$0")
echo "$BASEDIR"
cd $BASEDIR

resource_group="ghost-aci-rg"
dns_name_label="aci-demo-geircode"
container_name="ghost-geircode"

# az login

# az group create --name $resource_group --location northeurope

# az container create --resource-group $resource_group --name $container_name --image mcr.microsoft.com/azuredocs/aci-helloworld --dns-name-label $dns_name_label --ports 80

# # Besøk http://aci-demo-geircode.northeurope.azurecontainer.io/

# az container show --resource-group $resource_group --name $container_name --query "{FQDN:ipAddress.fqdn,ProvisioningState:provisioningState}" --out table

# az container logs --resource-group $resource_group --name $container_name

az container logs --resource-group $resource_group --name $container_name

az container attach --resource-group $resource_group --name $container_name