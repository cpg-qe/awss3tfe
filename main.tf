provider "aws" {
  access_key          = "${var.access_key}"
  secret_key          = "${var.secret_key}"
  allowed_account_ids = ["${var.first_account_id}"]
  region              = "${var.region}"
}
variable "access_key" {}
variable "secret_key" {}
variable "first_account_id" {
  type  = string
}
variable "region" {
  type  = string
}
resource "aws_s3_bucket" "shub1_test_bucket" {
  bucket = "cpg-automation-test-bucket-${random_id.id.hex}"
}

resource "random_id" "id" {
  byte_length = 4
}
