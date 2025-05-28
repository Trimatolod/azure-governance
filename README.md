Deploy assignments to management groups

1) Open Azure Bash and download the Bicep file

curl -O https://raw.githubusercontent.com/Trimatolod/azure-governance/main/assign-microsoft-cloud-security-benchmark.bicep

2) Deploy the policy assignment to your subscription (Replace westeurope with your preferred Azure region if needed)

az deployment mg create \
  --name assignMCSB \
  --management-group-id <management-group-name> \  # Replace with actual Management Group name
  --location switzerlandnorth \
  --template-file assign-microsoft-cloud-security-benchmark.bicep \
  --parameters location='switzerlandnorth'
