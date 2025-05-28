targetScope = 'managementGroup'

resource mcsb 'Microsoft.Authorization/policyAssignments@2022-06-01' = {
  name: 'mcsb-default'
  identity: {
    type: 'SystemAssigned'
  }
  properties: {
    displayName: 'Microsoft Cloud Security Benchmark'
    policyDefinitionId: '/providers/Microsoft.Authorization/policySetDefinitions/1f3afdf9-d0c9-4c3d-847f-89da613e70a8'
  }
}
