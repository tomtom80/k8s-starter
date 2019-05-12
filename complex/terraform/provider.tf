variable "bluemix_api_key" {}
variable "softlayer_username" {}
variable "softlayer_api_key" {}

# Configure the IBM Cloud Provider
provider "ibm" {
    region = "eu-de"
    bluemix_api_key = "${var.bluemix_api_key}"
    softlayer_username = "${var.softlayer_username}"
    softlayer_api_key  = "${var.softlayer_api_key}"
}