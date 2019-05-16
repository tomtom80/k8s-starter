resource "google_container_cluster" "gke-cluster" {
  name               = "tomkube"
  network            = "default"
  zone               = "europe-west3-b"
  initial_node_count = 3
}