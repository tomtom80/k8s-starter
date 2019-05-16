provider "google" {
  credentials = "${file("./creds/serviceaccount.json")}"
  project     = "multi-k8s"
  region      = "europe-west3"
}