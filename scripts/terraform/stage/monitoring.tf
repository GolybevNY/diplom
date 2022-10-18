resource "yandex_compute_instance" "monitoring" {

  name                      = "monitoring"
  zone                      = "ru-central1-b"
  hostname                  = "monitoring.golubevny.site"
  allow_stopping_for_update = true

  resources {
    cores  = 4
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id    = "${var.ubuntu-base}"
      type        = "network-nvme"
      size        = "10"
    }
  }

  network_interface {
    subnet_id = "${yandex_vpc_subnet.net-102.id}"
    nat       = false
  }

  metadata = {
    user-data = "${file("meta.txt")}"
  }

}