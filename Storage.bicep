
@maxLength(15)
@minLength(5)
@description('storage name must be between  5 - 15')
param strname string = 'somerandodfd'
param location string = resourceGroup().location
param kindType string  = 'standard_lrs'


resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: strname
  location: location
  kind: 'StorageV2'
  sku: {
    name: kindType
  }
}
output saname string = storageaccount.name
