terraform {
  backend "s3" {
    region = "us-west-2"
    bucket = "remote-exec-khuslen"
    key    = "r1soft/r1soft"
  }
}
