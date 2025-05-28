targetScope = 'subscription'

resource mcsecbenchAssignment 'Microsoft.Authorization/policyAssignments@2021-06-01' = {
  name: 'mcsecbench-assignment'
  properties: {
    displayName: 'Microsoft Cloud Security Benchmark'
    policyDefinitionId: '/providers/Microsoft.Authorization/policySetDefinitions/7f5e5198-4edc-4a49-b9cf-7f67de7b6c94'
    description: 'Assign the built-in Microsoft Cloud Security Benchmark initiative'
    enforcementMode: 'Default'
  }
}





