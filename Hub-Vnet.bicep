param location string = 'italynorth'

resource vnetHub 'Microsoft.Network/virtualNetworks@2021-02-01' = {
  name: 'vnet-prod-hub-itn-01'
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        '172.16.10.0/24'
      ]
    }
    subnets: [
      {
        name: 'AzureBastionSubnet'
        properties: {
          addressPrefix: '172.16.10.0/26'
        }
      }
      {
        name: 'AzureFirewallSubnet'
        properties: {
          addressPrefix: '172.16.10.64/26'
        }
      }
      {
        name: 'GatewaySubnet'
        properties: {
          addressPrefix: '172.16.10.128/27'
        }
      }
    ]
  }
}
