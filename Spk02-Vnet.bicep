param location string = 'italynorth'

resource vnetSpk2 'Microsoft.Network/virtualNetworks@2021-02-01' = {
  name: 'vnet-prod-spk-itn-02'
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        '172.16.12.0/24'
      ]
    }
    subnets: [
      {
        name: 'snet-prod-paas-itn-01'
        properties: {
          addressPrefix: '172.16.12.0/28'
        }
      }
    ]
  }
}
