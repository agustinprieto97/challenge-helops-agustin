# HelOps' Challenge.
#### Terraform AWS Automation Challenge.

# Overview
This project leverages Terraform and GitHub Actions to automate the deployment of a lightweight containerized application to Amazon Web Services (AWS). It is done by the process of provisioning AWS infrastructure and orchestrating the deployment of a containerized application via LightSail.

# Prerequisites
List the prerequisites necessary to run your project, including:

* Terraform Cloud Account.
* AWS Account.
* GitHub Account.

# Context:
For this project, i select **Lightsail** as AWS Service for deploy de container, and prepare a little demo app in **Python** for run in the container. This content is allowed in a GitHub repository, and deploy the steps in **GitHub Actions**. Also, for the infrastructure i will use **Terraform**.
# Step 1: GitHub Repository.
We need a repository with diferents files:

* **_.github directory:_** for the configuration for the Workflows.
* **_docker_image directory:_** here we store the Dockerfile, for prepare the container and the code for the application, Python file, the HTML index and the CSS file.
* ***_terraform directory:_*** for the Terraform file, where will be allowed the deploy for AWS.
* **_.gitignore file:_** this file is for ignore diferentes file in the moment of run the workflow.
* **_README.md file:_** for the documentation. 



# Step 2: Prepare Terraform Environment.

# Step 3: Prepare Workflow and the Application's code.

# Step 4: Deploy the Code.