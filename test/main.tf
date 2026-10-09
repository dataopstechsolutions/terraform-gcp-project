module "gcp_test" {
  source       = "../modules/gcp_instance"
  env          = "test"
  machine_type = "e2-micro"
  image        = "ubuntu-os-cloud/ubuntu-2204-lts"
  disk_size    = 10
  disk_type    = "pd-standard"
  network      = "default"
}