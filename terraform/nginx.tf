resource "yandex_compute_instance" "nginx" {
  name     = "nginx"
  hostname = "milevsky.quest"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = "fd82re2tpfl4chaupeuf" //Ubuntu 20.04 LTS
    }
  }

  network_interface {
    subnet_id      = yandex_vpc_subnet.subnet-1.id
    nat            = true
    nat_ip_address = var.yc_public_ip
  }

  metadata = {
    ssh-keys  = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}
