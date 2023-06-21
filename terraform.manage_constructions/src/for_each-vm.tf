variable "vm_list" {
    type = list(object({
        vm_name = string
        cpu = number
        ram = number
        disk = number
    }))
    default = [
        {
            vm_name = "main"
            cpu  = 2
            ram  = 4
            disk = 100
        },
        {
            vm_name = "replica"
            cpu  = 2
            ram  = 2
            disk = 20
        }
    ]
}

resource "yandex_compute_instance" "vm" {
    depends_on = [ yandex_compute_instance.web ]
    for_each = { for vm in var.vm_list : vm.vm_name => vm }

    name = each.value.vm_name
    platform_id = "standard-v1"
    
    resources {
        cores  = each.value.cpu
        memory = each.value.ram
        core_fraction = each.value.disk
    }
    
    boot_disk {
        initialize_params {
        image_id = data.yandex_compute_image.ubuntu-2004-lts.image_id
        type     = "network-hdd"
        size     = 5
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
}