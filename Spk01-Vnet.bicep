param location string = 'italynorth'

resource vnetSpk1 'Microsoft.Network/virtualNetworks@2021-02-01' = {
  name: 'vnet-prod-spk-itn-01'
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        '172.16.11.0/24'
      ]
    }
    subnets: [
      {
        name: 'snet-prod-iaas-itn-01'
        properties: {
          addressPrefix: '172.16.11.0/28'
        }
      }
    ]
  }
}
