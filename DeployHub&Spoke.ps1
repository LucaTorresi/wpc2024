#Login to azure

#az login --0000000000000000000000000

# Deploy Reosurce Group

az deployment sub create --location italynorth --template-file .\ResourceGroup.bicep


# Deploy Bicep File to Specific resource Group


az deployment group create --resource-group RG-WPC-HUB-ITN-01  --template-file .\Hub-Vnet.bicep

az deployment group create --resource-group RG-WPC-SPK-ITN-01  --template-file .\Spk01-Vnet.bicep

az deployment group create --resource-group RG-WPC-SPK-ITN-02  --template-file .\Spk02-Vnet.bicep

