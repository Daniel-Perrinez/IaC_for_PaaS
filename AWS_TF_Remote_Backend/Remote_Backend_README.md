## AWS_TF_Remote_Backend
We need to setup a remote backend so that the *IaC Workflow* can properly manage all infrastructure for PaaS.
Note that only the tfstate file for the backend itself needs to be checked into source control.
**--- Workflow ---**
cd IaC_for_PaaS/AWS_TF_Remote_Backend
terraform init
terraform plan -var-file vars/dp-sandbox/nonprod/vars.tfvars
    # When prompted for (look un AWS IAM):
        # var.oidc_thumbprint
        #  Thumbprint OpenID Connect

        #  Enter a value: 
        
terraform apply -var-file vars/dp-sandbox/nonprod/vars.tfvars -auto-approve