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

For this project, I have chosen **Lightsail** as the AWS service to deploy the container. I've also prepared a simple demo app in Python to run within the container. This content is hosted in a **GitHub** repository, and the deployment steps are automated using GitHub Actions. Additionally, I'll be leveraging **Terraform** for managing the infrastructure.

## Step 1: Prepare Enironment

### Step 1.a: AWS Account

* crear un usuario personal (good practices)
* crear un usuario programatico para que Terraform deploye
* crear access key y secret key para usuario programatico

### Step 1.b: Terraform Cloud Account

* crear organizacion
* crear workspace
* crear variables de entorno para el workspace con los secrets de AWS:
  * `AWS_ACCESS_KEY_ID` y rellenar con el Access Key del usuario programatico
  * `AWS_SECRET_ACCESS_KEY` y rellenar con el Secret Key del usuario programatico
* generar API TOKEN USER en <https://app.terraform.io/app/settings/tokens>

### Step 1.c: Github Repository

* accedes al repo
* configurar el secret de `TF_API_TOKEN` y la variable `TF_CLOUD_ORGANIZATION` para dar acceso a la cuenta de Terraform.

## Step 2: 

* Revisarque los archivos ``variables.tf`` y ``terraform.tf`` tengan las variables pertinentes
* commit algo o ejecutar a mano el workflow `Application Deploy`
* para el caso de eliminarlo, ejecutar manualmente el workflow `Application Destroy`

## Step 3: Prepare Workflow and the Application's code

## Step 4: Deploy the Code
