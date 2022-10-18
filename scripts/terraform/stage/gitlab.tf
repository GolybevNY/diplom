resource "yandex_compute_instance" "gitlab" {

  name                      = "gitlab"
  zone                      = "ru-central1-b"
  hostname                  = "gitlab.golubevny.site"
  allow_stopping_for_update = true

  resources {
    cores  = 4
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id    = "${var.ubuntu-20}"
      type        = "network-nvme"
      size        = "40"
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