resource "google_compute_instance" "default" {
  name         = "test"
  project = "devops-sandbox-20200519"
  machine_type = "e2-medium"
  zone         = "us-central1-a"
    network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
}
