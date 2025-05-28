1) Deploy the Microsoft Cloud Security Benchmark to Management Groups

Option 1: Assign initiatve (not working)
   az policy assignment create \
  --name "mcsb-default" \
  --scope "/providers/Microsoft.Management/managementGroups/your-management-group-id" \
  --policy-set-definition "/providers/Microsoft.Authorization/policySetDefinitions/1f3afdf9-d0c9-4c3d-847f-89da613e70a8" \
  --location "switzerlandnorth"

Option 2: With Bicep file

  1.1) Open Azure Bash and download the Bicep file

  curl -O https://raw.githubusercontent.com/Trimatolod/azure-governance/main/assign-microsoft-cloud-security-benchmark.bicep

  1.2) Deploy the policy assignment

  az deployment mg create \
    --name assignMCSB \
    --management-group-id <management-group-name> \  # Replace with actual Management Group name
    --location switzerlandnorth \
    --template-file assign-microsoft-cloud-security-benchmark.bicep \
    --parameters location='switzerlandnorth'


2) Deploy custom initiative

  2.1) Use policies
  'Inherit a tag from the resource group'
https://www.azadvertizer.net/azpolicyadvertizer/cd3aa116-8754-49c9-a813-ad46512ece54.html

