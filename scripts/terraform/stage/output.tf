output "internal_ip_address_db01_yandex_cloud" {
  value = yandex_compute_instance.db01.network_interface.0.ip_address
}

output "internal_ip_address_db02_yandex_cloud" {
  value = yandex_compute_instance.db02.network_interface.0.ip_address
}

output "internal_ip_address_gitlab_yandex_cloud" {
  value = yandex_compute_instance.gitlab.network_interface.0.ip_address
}

output "internal_ip_address_runner_yandex_cloud" {
  value = yandex_compute_instance.runner.network_interface.0.ip_address
}

output "internal_ip_address_app_yandex_cloud" {
  value = yandex_compute_instance.app.network_interface.0.ip_address
}

output "internal_ip_address_monitoring_yandex_cloud" {
  value = yandex_compute_instance.monitoring.network_interface.0.ip_address
}

output "internal_ip_address_proxy_lan_yandex_cloud" {
  value = yandex_compute_instance.proxy.network_interface.0.ip_address
}

output "internal_ip_address_proxy_wan_yandex_cloud" {
  value = yandex_compute_instance.proxy.network_interface.0.nat_ip_address
}

output "workspace" {
  value = "${terraform.workspace}"
}
