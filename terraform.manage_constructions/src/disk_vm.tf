resource "yandex_compute_disk" "disk" {
    name = "disk-${count.index + 1}"
    size = 1
    description = "Disk for storage"
    zone = var.default_zone
    count = 3
}

resource "yandex_compute_instance" "storage" {
    name = "storage"
    zone = var.default_zone
    platform_id = "standard-v1"

    resources {
        cores = 2
        memory = 2
    }

    boot_disk {
        initialize_params {
            image_id = data.yandex_compute_image.ubuntu-2004-lts.image_id
            size = 10
        }
    }

    metadata = {
        ssh-keys = "ubuntu:${local.ssh_public_key}"
    }

    scheduling_policy { preemptible = true }

    network_interface { 
        subnet_id = yandex_vpc_subnet.develop.id
        nat       = true
    }
    allow_stopping_for_update = true

    dynamic "secondary_disk" {
        for_each = yandex_compute_disk.disk
        content {
            device_name = "disk-${secondary_disk.key}"
            disk_id = secondary_disk.value.id
        }
    }
}