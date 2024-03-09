terraform {
  required_providers {
     kaniko = {
      source = "registry.terraform.io/seal-io/kaniko"
    }
  }
  cloud {
    organization = "testing-agustin"

    workspaces {
      name = "helops-test"
    }
  }
}

provider "aws" {
  region  = "eu-north-1"
}

resource "aws_lightsail_container_service" "flask_application" {
  name = "agustin-test"
  power = "nano"
  scale = 1
  tags = {
    version = "1.0.0"
  }
  private_registry_access {
    ecr_image_puller_role {
      is_active = true
    }
  }
}

resource "aws_lightsail_container_service_deployment_version" "flask_app_deployment" {
  container {
    container_name = "agustin-test"

    image = "730335429342.dkr.ecr.eu-north-1.amazonaws.com/pepe:flask"
    
    ports = {
      # Consistent with the port exposed by the Dockerfile and app.py
      5000 = "HTTP"
    }
  }

  public_endpoint {
    container_name = "agustin-test"
    # Consistent with the port exposed by the Dockerfile and app.py
    container_port = 5000

    health_check {
      healthy_threshold   = 2
      unhealthy_threshold = 2
      timeout_seconds     = 2
      interval_seconds    = 5
      path                = "/"
      success_codes       = "200-499"
    }
  }

  service_name = aws_lightsail_container_service.flask_application.name
}