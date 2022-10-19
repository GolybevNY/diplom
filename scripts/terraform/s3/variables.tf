# https://console.cloud.yandex.ru/cloud?section=overview
variable "yandex_cloud_id" {
  default = "b1g3lc78954qacd8cqsk"
}

# https://console.cloud.yandex.ru/cloud?section=overview
variable "yandex_folder_id" {
  default = "b1ge8pkr6bvdj1t5qd98"
}

variable "service_account_id" {
  default = "ajedhafuajleavpctkmf"
}

# Accsess key
variable "yandex_access_key" {
  type = string
  description = "This is an env variable TF_VAR_yandex_access_key  from secrets_export.sh"
}

# Secret key
variable "yandex_secret_key" {
  type = string
  description = "This is an env variable TF_VAR_yandex_secret_key  from secrets_export.sh"
}