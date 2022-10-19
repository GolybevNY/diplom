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

# ID yc compute image list Ubuntu 22.04 LTS
variable "ubuntu-base" {
  default = "fd8uoiksr520scs811jl"
}

# ID yc compute image list Ubuntu 20.04 LTS
variable "ubuntu-20" {
  default = "fd8kdq6d0p8sij7h5qe3"
}

# https://cloud.yandex.ru/marketplace/products/yc/nat-instance-ubuntu-18-04-lts
variable "ubuntu-proxy" {
  default = "fd83slullt763d3lo57m"
}


variable "lan_proxy_ip" {
  default = "192.168.101.100"
}

# Accsess key
variable "yandex_access_key" {
  type = string
  description = "This is an env variable TF_VAR_yandex_access_key from secrets_export.sh"
}

# Secret key
variable "yandex_secret_key" {
  type = string
  description = "This is an env variable TF_VAR_yandex_secret_key from secrets_export.sh"
}