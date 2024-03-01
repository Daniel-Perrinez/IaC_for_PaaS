[![Run IaC Workflow - push event](https://github.com/Daniel-Perrinez/IaC_for_PaaS/actions/workflows/run_IaC.yaml/badge.svg?branch=main&event=push)](https://github.com/Daniel-Perrinez/IaC_for_PaaS/actions/workflows/run_IaC.yaml)

[![Run IaC Workflow - workflow_dispatch event](https://github.com/Daniel-Perrinez/IaC_for_PaaS/actions/workflows/run_IaC.yaml/badge.svg?branch=main&event=workflow_dispatch)](https://github.com/Daniel-Perrinez/IaC_for_PaaS/actions/workflows/run_IaC.yaml)

# IaC_for_PaaS
Infrastructure as Code (IaC) for Platform as a Service (PaaS)

This repository with host a pipeline for executing IaC for PaaS.

At least for now it will also keep documentation on setting up cluster tools like:
- ArgoCD
- Harbor



## AWS_TF_Remote_Backend
We need to setup a remote backend so that the *IaC Workflow* can properly manage all infrastructure for PaaS.
Note that only the tfstate file for the backend itself needs to be checked into source control.
IaC_for_PaaS/AWS_TF_Remote_Backend/Remote_Backend_README.md
[Remote_Backend_README.md](IaC_for_PaaS/AWS_TF_Harbor/Remote_Backend_README.md)

## AWS_TF_Harbor
[Harbor_Setup_README.md](IaC_for_PaaS/AWS_TF_Harbor/Harbor_Setup_README.md)
