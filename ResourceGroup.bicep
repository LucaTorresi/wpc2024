targetScope = 'subscription'

param location string = 'italynorth'

resource rgHub 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'RG-WPC-HUB-ITN-01'
  location: location
}

resource rgSpk1 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'RG-WPC-SPK-ITN-01'
  location: location
}

resource rgSpk2 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'RG-WPC-SPK-ITN-02'
  location: location
}
