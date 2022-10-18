resource "yandex_compute_instance" "proxy" {

  name                      = "proxy"
  zone                      = "ru-central1-a"
  hostname                  = "golubevny.site"
  allow_stopping_for_update = true

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id    = "${var.ubuntu-proxy}"
      type        = "network-nvme"
      size        = "10"
    }
  }

  network_interface {
    subnet_id = "${yandex_vpc_subnet.net-101.id}"
    ip_address  = var.lan_proxy_ip
    nat       = true
    nat_ip_address = yandex_vpc_address.addr.external_ipv4_address[0].address
  }

  metadata = {
    user-data = "${file("meta.txt")}"
  }

}