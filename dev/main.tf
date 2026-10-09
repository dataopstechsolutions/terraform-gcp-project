module "gcp_dev" {
  source       = "../modules/gcp_instance"
  env          = "dev"
  machine_type = "e2-micro"
  image        = "ubuntu-os-cloud/ubuntu-2204-lts"
  disk_size    = 10
  disk_type    = "pd-standard"
  network      = "default"
}