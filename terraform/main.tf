provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_lightsail_container_service" "flask_application" {
  name  = "${ var.app_name }"
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
    container_name = "${ var.app_name }"

    image = "${var.image_name}:${var.tag_version}"

    ports = {
      # Consistent with the port exposed by the Dockerfile and app.py
      5000 = "HTTP"
    }
  }

  public_endpoint {
    container_name = "${ var.app_name }"
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