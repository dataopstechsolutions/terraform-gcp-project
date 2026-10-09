# This is Provider file for Google Cloud
provider "google" {
  project     = "terraform-devops-project-12345"
  # 👆 Specifies the unique Project ID in GCP where resources will be created.
  # This connects Terraform to your specific GCP project
  region      = "asia-south1"
  # 👆 Defines the region (Mumbai) where your resources will be deployed.
  zone        = "asia-south1-a"
  # 👆 Defines the specific zone within the region.
  credentials = file("D:/Training/DevOps/cloudtrain/terraform/gcp/terraform-devops-project-12345-b2ce0e028592.json")
  # 👆 Points to your downloaded service account JSON key file.
}