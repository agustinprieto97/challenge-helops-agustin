# HelOps' Challenge

Terraform AWS Automation Challenge.

## Overview

This project leverages Terraform and GitHub Actions to automate the deployment of a lightweight containerized application to Amazon Web Services (AWS). It is done by the process of provisioning AWS infrastructure and orchestrating the deployment of a containerized application via LightSail.

## Prerequisites

List the prerequisites necessary to run your project, including:

* Terraform Cloud Account.
* AWS Account.
* GitHub Account.

## Context

For this project, I have chosen **Lightsail** as the AWS service to deploy the container. I've also prepared a simple demo app in Python to run within the container. This content is hosted in a GitHub repository, and the deployment steps are automated using **GitHub Actions**. Additionally, I'll be leveraging **Terraform** for managing the infrastructure.

## Usage

### Step 1: Prepare Environment

#### AWS Account

1. Create a IAM user following best practices.
2. Set up a programmatic user for Terraform deployments.
3. Generate access and secret keys for the programmatic user.

#### Terraform Cloud Account

1. Establish an organization.
2. Create a workspace.
3. Configure environment variables for the workspace containing AWS secrets:
    * `AWS_ACCESS_KEY_ID`: Fill in with the Access Key of the programmatic user.
    * `AWS_SECRET_ACCESS_KEY`: Fill in with the Secret Key of the programmatic user.
4. Generate an API TOKEN USER at [Terraform Settings](https://app.terraform.io/app/settings/tokens).

#### GitHub Repository

1. Access the repository.
2. Configure the `TF_API_TOKEN` secret and set the `TF_CLOUD_ORGANIZATION` variable to grant access to the Terraform account.
3. Set the `AUTO_DEPLOY` variable to `true` to enable automatic deployment after a commit.

### Step 2: Execute Deployment

1. Ensure that the `variables.tf` and `terraform.tf` files contain relevant variables.
2. Commit changes or manually trigger the `Application Deploy` workflow.
3. To remove the deployment, manually execute the `Application Destroy` workflow.

### Step 3: Verification

1. Check for any errors in GitHub Actions.
2. Verify functionality in AWS Lightsail by accessing the provided URL from Amazon.

## Future Improvements

* Separate the code into two repositories: one for development and one for Infrastructure as Code (IaC).
* Implement personalized domain setups (apigateway, domain registration, certificate).
* Introduce a private registry for secure deployments.
* Enhance monitoring and alerting capabilities.
* Implement reusable Terraform modules for increased efficiency.
* Enhance Continuous Integration (CI)/Git Flow practices.
* Consider transitioning to Amazon EKS or ECS for future projects instead of Lightsail.
