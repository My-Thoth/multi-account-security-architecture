# AWS Multi-Account Security Architecture

This project implements a multi-account security architecture using Terraform, with integrated security tools such as AWS Security Hub, GuardDuty, and Control Tower. It also includes automation for managing AWS accounts and responding to security incidents.

## Project Structure

- `terraform/`: Contains Terraform scripts for setting up AWS Organization, Security Hub, GuardDuty, AWS Config, and Control Tower.
- `policies/`: Service Control Policies (SCPs) and IAM policies for account governance.
- `actions/`: GitHub Actions workflows to automate account creation.
- `lambda/`: Lambda functions for automated responses to GuardDuty findings.

## Prerequisites

1. Terraform v1.0+
2. AWS CLI
3. GitHub Actions set up for deployment automation

## Setup

1. Clone the repository.
2. Update `terraform.tfvars` with your AWS configuration.
3. Run `terraform init` and `terraform apply` to deploy the architecture.

## Usage

- Use GitHub Actions to create new AWS accounts automatically.
- SCPs to enforce policies across all accounts.
- GuardDuty and Security Hub for monitoring security threats.
