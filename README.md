1) Deploy the Microsoft Cloud Security Benchmark to Management Groups

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

  2.1) Use policy 'Inherit a tag from the resource group'
https://www.azadvertizer.net/azpolicyadvertizer/cd3aa116-8754-49c9-a813-ad46512ece54.html
