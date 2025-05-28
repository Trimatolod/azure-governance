targetScope = 'subscription'

@description('Location for the policy assignment')
param location string = 'westeurope'

resource mcsb 'Microsoft.Authorization/policyAssignments@2022-06-01' = {
  name: 'mcsb-default'
  location: location
  identity: {
    type: 'SystemAssigned'
  }
  properties: {
    displayName: 'Microsoft Cloud Security Benchmark'
    policyDefinitionId: '/providers/Microsoft.Authorization/policySetDefinitions/1f3afdf9-d0c9-4c3d-847f-89da613e70a8'
  }
}
