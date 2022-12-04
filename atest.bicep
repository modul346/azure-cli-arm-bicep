@description('The name of the Storage Account')
param name string

resource name_resource 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: name
  tags: {
    displayName: 'storageaccount1'
  }
  location: resourceGroup().location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}
