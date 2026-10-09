# Main resource file for GCP VM
# Lookup the latest Ubuntu 22.04 LTS image
data "google_compute_image" "ubuntu" {
  family  = "ubuntu-2204-lts"
  project = "ubuntu-os-cloud"
}

resource "google_compute_instance" "vm" {
  name         = "${var.env}-vm"          # VM name tagged with environment
  machine_type = var.machine_type         # Uses machine type variable
  zone         = "asia-south1-a"          # Zone is fixed in provider.tf

  boot_disk {
    initialize_params {
      size  = var.disk_size               # Disk size in GB
      type  = var.disk_type               # Disk type (pd-standard)
      image = data.google_compute_image.ubuntu.self_link
    }
  }

  network_interface {
    network = var.network                 # Attach to default network
    access_config {}                      # Assigns a public IP
  }

  tags = [var.env]                        # Tags VM with environment name
}
