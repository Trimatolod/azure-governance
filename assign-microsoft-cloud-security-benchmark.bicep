@description('Target subscription ID for policy assignment')
param subscriptionId string

resource mcsecbenchAssignment 'Microsoft.Authorization/policyAssignments@2021-06-01' = {
  name: 'mcsecbench-assignment'
  scope: subscription(subscriptionId)
  properties: {
    displayName: 'Microsoft Cloud Security Benchmark'
    description: 'Assigns the built-in Microsoft Cloud Security Benchmark initiative'
    policyDefinitionId: '/providers/Microsoft.Authorization/policySetDefinitions/3f3679d2-13d6-48bd-8f07-6ffb84b2b1f4'
    enforcementMode: 'Default'
  }
}





