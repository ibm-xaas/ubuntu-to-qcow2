source "qemu" "example" {
  iso_url              = "https://cloud-images.ubuntu.com/jammy/current/jammy-server-cloudimg-amd64.img"
  iso_checksum         = "file:https://cloud-images.ubuntu.com/jammy/current/SHA256SUMS"
  output_directory     = "output"
  shutdown_command     = "rm -f /home/ubuntu/.ssh/authorized_keys && sudo rm -f /root/.ssh/authorized_keys && echo 'packer' | sudo -S shutdown -P now"
  disk_compression     = true
  format               = "qcow2"
  http_directory       = "http"
  ssh_username         = "ubuntu"
  ssh_private_key_file = "~/.ssh/id_ed25519"
  ssh_timeout          = "20m"
  vm_name              = "jammy"
  memory               = 4096
  disk_interface       = "virtio"
  net_device           = "virtio-net"
  boot_wait            = "10s"
  qemuargs = [
    ["-display", "none"],
    ["-fda", "disk-ssh-pub.img"]
  ]
}

build {
  sources = ["source.qemu.example"]
}
