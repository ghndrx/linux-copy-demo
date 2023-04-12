# Create the first VM in the first zone
resource "google_compute_instance" "vm1" {
  name         = "vm1"
  machine_type = var.instance_type
  zone         = var.zone[0]
  tags         = ["allow-ssh","allow-internal"]
  boot_disk {
    initialize_params {
      image = var.image_name
    }
  }
  network_interface {
    network = var.network_name
    subnetwork = "subnet-1"
    access_config {
      // Use ephemeral IP address
      nat_ip = null
    }
  }
  
  metadata_startup_script = "apt-get update && apt-get install -y rsync"

}

# Create the second VM in the second zone
resource "google_compute_instance" "vm2" {
  name         = "vm2"
  machine_type = var.instance_type
  zone         = var.zone[1]
  tags         = ["allow-ssh","allow-internal"]
  boot_disk {
    initialize_params {
      image = var.image_name
    }
  }
  network_interface {
    network = var.network_name
    subnetwork = "subnet-2"
    access_config {
      // Use ephemeral IP address
      nat_ip = null
    }                                   
  }   
                       
  metadata_startup_script = "apt-get update && apt-get install -y rsync"

}

