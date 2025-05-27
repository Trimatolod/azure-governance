targetScope = 'subscription'

param subscriptionId string = '7b3f6b42-6649-491e-a2ee-c2d40196c5fa'

resource mcsecbenchAssignment 'Microsoft.Authorization/policyAssignments@2021-06-01' = {
  name: 'mcsecbench-assignment'https://github.com/Trimatolod/azure-governance/blob/main/assign-microsoft-cloud-security-benchmark.bicep#L8C30
  scope: subscription(subscriptionId)
  properties: {
    displayName: 'Microsoft Cloud Security Benchmark'
    policyDefinitionId: '/providers/Microsoft.Authorization/policySetDefinitions/7f5e5198-4edc-4a49-b9cf-7f67de7b6c94'
    description: 'Assign the built-in Microsoft Cloud Security Benchmark initiative'
    enforcementMode: 'Default'
  }
}




