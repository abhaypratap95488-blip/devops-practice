# Azure Infrastructure Automation using Terraform

## Project Overview
This project demonstrates Infrastructure as Code (IaC) using Terraform to define Azure networking resources and automate code validation through GitHub Actions.

## Technologies Used
- Microsoft Azure
- Terraform
- Git and GitHub
- GitHub Actions
- Checkov for security scanning

## Infrastructure
The Terraform configuration defines:
- Azure Resource Group (existing resource imported into Terraform state)
- Virtual Network (VNet)
- Subnet
- Network Security Group (NSG)
- Subnet–NSG association

## CI/CD Workflow
The GitHub Actions workflow is configured to run on pushes and pull requests to the `main` branch.

It checks:
- Terraform formatting
- Terraform initialization
- Terraform configuration validation
- Terraform security scanning with Checkov

## Terraform Outputs
The project defines outputs for:
- Resource Group name
- Virtual Network name
- Virtual Network address space

## What I Learned
- Writing Infrastructure as Code with Terraform
- Managing Azure resources and Terraform state
- Using Git and GitHub for version control
- Automating validation and security checks with GitHub Actions

## Current Status
Terraform configuration validation and planning have been completed. The plan shows four resources to add: Virtual Network, Subnet, Network Security Group, and their association.

**Note:** These four networking resources have not yet been deployed to Azure.

## Repository
[GitHub Repository](https://github.com/abhaypratap95488-blip/devops-practice)

