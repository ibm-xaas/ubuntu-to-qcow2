source "qemu" "jammy" {
  iso_url                   = "https://cloud-images.ubuntu.com/jammy/current/jammy-server-cloudimg-amd64.img"
  iso_checksum              = "file:https://cloud-images.ubuntu.com/jammy/current/SHA256SUMS"
  output_directory          = "output"
  shutdown_command          = "rm -f /home/ubuntu/.ssh/authorized_keys && sudo rm -f /root/.ssh/authorized_keys && echo 'packer' | sudo -S shutdown -P now"
  disk_size                 = "10G"
  format                    = "qcow2"
  http_directory            = "http"
  ssh_username              = "ubuntu"
  ssh_private_key_file      = "~/.ssh/id_ed25519"
  ssh_port                  = 22
  ssh_clear_authorized_keys = true
  ssh_timeout               = "60m"
  memory                    = 4096
  disk_image                = true
  disk_interface            = "virtio"
  boot_wait                 = "3m"
  use_default_display       = true
  vm_name                   = "jammy"
  qemuargs = [
    ["-display", "none"],
    ["-cdrom", "disk-ssh-pub-jammy.img"]
  ]
}

source "qemu" "focal" {
  iso_url                   = "https://cloud-images.ubuntu.com/focal/current/focal-server-cloudimg-amd64.img"
  iso_checksum              = "file:https://cloud-images.ubuntu.com/focal/current/SHA256SUMS"
  output_directory          = "output"
  shutdown_command          = "rm -f /home/ubuntu/.ssh/authorized_keys && sudo rm -f /root/.ssh/authorized_keys && echo 'packer' | sudo -S shutdown -P now"
  disk_size                 = "10G"
  format                    = "qcow2"
  http_directory            = "http"
  ssh_username              = "ubuntu"
  ssh_private_key_file      = "~/.ssh/id_ed25519"
  ssh_port                  = 22
  ssh_clear_authorized_keys = true
  ssh_timeout               = "60m"
  memory                    = 4096
  disk_image                = true
  disk_interface            = "virtio"
  boot_wait                 = "3m"
  use_default_display       = true
  vm_name                   = "focal"
  qemuargs = [
    ["-display", "none"],
    ["-cdrom", "disk-ssh-pub-jammy.img"]
  ]
}

source "qemu" "bionic" {
  iso_url                   = "https://cloud-images.ubuntu.com/bionic/current/bionic-server-cloudimg-amd64.img"
  iso_checksum              = "file:https://cloud-images.ubuntu.com/bionic/current/SHA256SUMS"
  output_directory          = "output"
  shutdown_command          = "rm -f /home/ubuntu/.ssh/authorized_keys && sudo rm -f /root/.ssh/authorized_keys && echo 'packer' | sudo -S shutdown -P now"
  disk_size                 = "10G"
  format                    = "qcow2"
  http_directory            = "http"
  ssh_username              = "ubuntu"
  ssh_private_key_file      = "~/.ssh/id_ed25519"
  ssh_port                  = 22
  ssh_clear_authorized_keys = true
  ssh_timeout               = "60m"
  memory                    = 4096
  disk_image                = true
  disk_interface            = "virtio"
  boot_wait                 = "3m"
  use_default_display       = true
  vm_name                   = "bionic"
  qemuargs = [
    ["-display", "none"],
    ["-cdrom", "disk-ssh-pub-jammy.img"]
  ]
}


build {
  sources = ["source.qemu.bionic", "source.qemu.focal", "source.qemu.jammy"]
  #sources = ["source.qemu.jammy"]
  #sources = ["source.qemu.bionic"]
  #sources = ["source.qemu.focal"]
}
