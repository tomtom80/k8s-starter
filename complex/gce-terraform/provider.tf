provider "google" {
  credentials = "${file("./creds/serviceaccount.json")}"
  project     = "winged-fusion-240820"
  region      = "europe-west3"
}