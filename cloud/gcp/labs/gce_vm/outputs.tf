output "gce_vm_ip" {
  value = google_compute_instance.instance-1.network_interface[0].access_config[0].nat_ip
}