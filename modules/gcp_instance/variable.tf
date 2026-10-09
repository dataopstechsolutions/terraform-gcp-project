#This is setting variables for the Mumbai region in GCP

variable "env" {
  description = "Environment name (e.g., dev, prod, test)"
  type        = string
}

variable "machine_type" {
  description = "GCP VM machine type"
  type        = string
  default     = "e2-micro"
}

variable "image" {
  description = "GCP VM image to use"
  type        = string
  default     = "ubuntu-os-cloud/ubuntu-2004-lts"
}

variable "disk_size" {
  description = "Size of the boot disk in GB"
  type        = number
  default     = 10
}

variable "disk_type" {
  description = "Type of the boot disk"
  type        = string
  default     = "pd-standard"
}

variable "network" {
  description = "GCP network to attach the VM to"
  type        = string
  default     = "default"
}

