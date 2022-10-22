provider "yandex" {
  cloud_id  = "${var.yandex_cloud_id}"
  folder_id = "${var.yandex_folder_id}"
  zone                      = "ru-central1-a"
}

data "yandex_iam_service_account" "robot" {
  service_account_id = "${var.service_account_id}"
}

terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
      version = "= 0.78.1"
    }
  }
  required_version = "= 1.2.8"
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "s3-diplom"
    region     = "ru-central1-a"
    key        = "terraform/state.tfstate"
    access_key = "insert key"
    secret_key = "insert key"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

