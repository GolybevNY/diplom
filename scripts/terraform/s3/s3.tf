terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
      version = "= 0.78.1"
    }
  }
  required_version = "= 1.2.8"
}

provider "yandex" {
  cloud_id  = "${var.yandex_cloud_id}"
  folder_id = "${var.yandex_folder_id}"
  zone                      = "ru-central1-a"
}

data "yandex_iam_service_account" "robot" {
  service_account_id = "${var.service_account_id}"
}

// Storage Static Access Keys
resource "yandex_iam_service_account_static_access_key" "sa-static-key" {
  service_account_id = "${var.service_account_id}"
  description        = "static access key for object storage"
}

resource "yandex_storage_bucket" "s3-diplom" {
  access_key = "${yandex_iam_service_account_static_access_key.sa-static-key.access_key}"
  secret_key = "${yandex_iam_service_account_static_access_key.sa-static-key.secret_key}"
  bucket = "s3-diplom"
  force_destroy = true
}
