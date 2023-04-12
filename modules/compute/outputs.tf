output "vm1_ip" {
  value = google_compute_instance.vm1.network_interface[*].access_config[*].nat_ip
}

output "vm2_ip" {
  value = google_compute_instance.vm2.network_interface[*].access_config[*].nat_ip
}