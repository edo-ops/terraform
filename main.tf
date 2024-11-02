terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "2.7.0"  # Utilisez la version appropriée
    }
  }
}

provider "proxmox" {
  pm_api_url      = "https://ip-proxmox:8006/api2/json"
  pm_user         = "root@pam"
  pm_password     = "votre-mot-de-passe"
  pm_tls_insecure = true
}

resource "proxmox_vm_qemu" "debian_vm" {
  name        = "debian-vm"
  target_node = "nom-du-node"
  clone       = "debian"
  cores       = 2
  memory      = 2048
  sockets     = 1

  disk {
    size = "32G"
    type = "scsi"
    storage = "nom-du-storage"
  }

  network {
    model = "virtio"
    bridge = "vmbr0"
  }

  lifecycle {
    create_before_destroy = true
  }
}


