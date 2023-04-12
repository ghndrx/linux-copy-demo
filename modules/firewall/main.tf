resource "google_compute_firewall" "allow_internal" {
  name          = "allow-internal"
  network       = var.network_name
  source_ranges = ["0.0.0.0/0"]
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "tcp"
    ports    = ["0-65535"]
  }
  allow {
    protocol = "udp"
    ports    = ["0-65535"]
  }
  target_tags = ["allow-internal"]

}

resource "google_compute_firewall" "allow-ssh" {
    name          = "allow-ssh"
  network       = var.network_name
  source_ranges = ["0.0.0.0/0"]
  allow {
    protocol = "tcp"
    ports = ["22"]
  }
  target_tags = ["allow-ssh"]

  
}