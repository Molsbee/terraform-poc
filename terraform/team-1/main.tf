terraform {
  required_providers {
    temporalcloud = {
      source = "temporalio/temporalcloud"
    }
  }
  backend "s3" {
    # Bucket Name
    bucket = "terraform-state-bucket"
    # The terraform state is written to the key
    key = "team-1/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "temporalcloud" {

}

resource "temporalcloud_namespace" "team1namespace" {
  name = "test-namespace"
  regions = ["aws-us-east-1"]
  // path.module is the filesystem path of the module where the expression is place.
  accepted_client_ca = base64decode(file("${path.module}/ca.pem"))
  retention_days = "14"
  // Prevents Terraform from deleting namespace. Must remove this before destroying resource.
  lifecycle {
    prevent_destroy = true
  }
}