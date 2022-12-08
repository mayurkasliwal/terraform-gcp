
resource "google_compute_disk" "gke_proxy" {
    provider = google-beta
    project = var.project
    zone = var. zone
    name = var.boot_disk_name
    type = var.boot_disk_type
    size = var.boot_disk_size
    
    disk_encryption_key {
        kms_key_self_link = "projects/${var.kms_project}/locations/${var.region}/keyRings/computeEngine/cryptoKeys/computeEngine"
    }
    image = var.boot_disk_image
}

resource "google_compute_instance" "gke_proxy" {
  project   = var.project
  zone      = var. zone
  name         = var.proxy_name
  machine_type = var.machine_type
 
  tags = var.firewall_tags

  boot_disk {
    source = google_compute_disk.gke_proxy.name
    auto_delete = var.boot_disk_auto_delete
    }
  

  service_account {
      email = var.instance_service_account
      scopes = var.instance_scopes
  }

  network_interface {
      subnetwork_project  = var.shared_project
      subnetwork          = var.shared_subnetwork
      network_ip          = var.staticIP_name_nic0
  }

  network_interface {
      subnetwork_project = var.project
      subnetwork         = var.subnetwork
      network_ip        = var.staticIP_name_nic1
  }
}
