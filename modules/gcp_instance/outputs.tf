output "instance_name" {
  value       = google_compute_instance.vm.name
  description = "The name of the VM instance"
}

output "instance_ip" {
  value       = google_compute_instance.vm.network_interface[0].access_config[0].nat_ip
  description = "The public IP of the VM instance"
}

output "instance_zone" {
  value       = google_compute_instance.vm.zone
  description = "The zone where the VM is deployed"
}
