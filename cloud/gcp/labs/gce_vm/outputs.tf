output "gce_vm_ip" {
  value = google_compute_instance.instance-1.metadata
}