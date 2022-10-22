[![pre-commit](https://github.com/ibm-xaas/ubuntu-to-qcow2/actions/workflows/pre-commit.yml/badge.svg?branch=main)](https://github.com/ibm-xaas/ubuntu-to-qcow2/actions/workflows/pre-commit.yml) [![@seungyeop's Holopin board](https://holopin.me/seungyeop)](https://holopin.io/@seungyeop)
# ubuntu-to-qcow2
Retrieve the latest ubuntu (bionic, focal, and jammy) and convert to qcow2 format

# Test
```
ubuntu@f0d07894491f:/jammy$ ./build.sh
qemu.bionic: output will be in this color.
qemu.focal: output will be in this color.
qemu.jammy: output will be in this color.

==> qemu.jammy: Retrieving ISO
==> qemu.focal: Retrieving ISO
==> qemu.bionic: Retrieving ISO
==> qemu.jammy: Trying https://cloud-images.ubuntu.com/jammy/current/jammy-server-cloudimg-amd64.img
==> qemu.bionic: Trying https://cloud-images.ubuntu.com/bionic/current/bionic-server-cloudimg-amd64.img
==> qemu.focal: Trying https://cloud-images.ubuntu.com/focal/current/focal-server-cloudimg-amd64.img
==> qemu.bionic: Trying https://cloud-images.ubuntu.com/bionic/current/bionic-server-cloudimg-amd64.img?checksum=sha256%3A0a91d095b634d3a4e8eb042476e0bfc751168e69ae60f6b5885a006036508497
==> qemu.jammy: Trying https://cloud-images.ubuntu.com/jammy/current/jammy-server-cloudimg-amd64.img?checksum=sha256%3A4d8d5b95082ed3551cf06b086b854b99d2025c903d1936c35ef34e173c57a817
==> qemu.focal: Trying https://cloud-images.ubuntu.com/focal/current/focal-server-cloudimg-amd64.img?checksum=sha256%3A2591505cc6584a39bbab06d94491210dd406e2ed8a35d59f403acea60d4938a9
==> qemu.bionic: https://cloud-images.ubuntu.com/bionic/current/bionic-server-cloudimg-amd64.img?checksum=sha256%3A0a91d095b634d3a4e8eb042476e0bfc751168e69ae60f6b5885a006036508497 => /home/ubuntu/.cache/packer/97d7101ddbc6aa2ec1af6c257961c84966bd2d9c.iso
==> qemu.bionic: Copying hard drive...
==> qemu.focal: https://cloud-images.ubuntu.com/focal/current/focal-server-cloudimg-amd64.img?checksum=sha256%3A2591505cc6584a39bbab06d94491210dd406e2ed8a35d59f403acea60d4938a9 => /home/ubuntu/.cache/packer/7d9856cb66bc4b4cee0e739aa7cb65849b996da9.iso
==> qemu.focal: Copying hard drive...
==> qemu.jammy: https://cloud-images.ubuntu.com/jammy/current/jammy-server-cloudimg-amd64.img?checksum=sha256%3A4d8d5b95082ed3551cf06b086b854b99d2025c903d1936c35ef34e173c57a817 => /home/ubuntu/.cache/packer/4cc086154a66a7a427a954917578e448a6a078ba.iso
==> qemu.jammy: Copying hard drive...
==> qemu.bionic: Resizing hard drive...
==> qemu.focal: Resizing hard drive...
==> qemu.jammy: Resizing hard drive...
==> qemu.bionic: Starting HTTP server on port 8135
==> qemu.bionic: Found port for communicator (SSH, WinRM, etc): 4097.
==> qemu.bionic: Looking for available port between 5900 and 6000 on 127.0.0.1
==> qemu.bionic: Starting VM, booting disk image
==> qemu.bionic: Overriding default Qemu arguments with qemuargs template option...
==> qemu.jammy: Starting HTTP server on port 8191
==> qemu.focal: Starting HTTP server on port 8676
==> qemu.jammy: Found port for communicator (SSH, WinRM, etc): 3907.
==> qemu.focal: Found port for communicator (SSH, WinRM, etc): 3030.
==> qemu.jammy: Looking for available port between 5900 and 6000 on 127.0.0.1
==> qemu.focal: Looking for available port between 5900 and 6000 on 127.0.0.1
==> qemu.jammy: Starting VM, booting disk image
==> qemu.jammy: Overriding default Qemu arguments with qemuargs template option...
==> qemu.focal: Starting VM, booting disk image
==> qemu.focal: Overriding default Qemu arguments with qemuargs template option...
==> qemu.bionic: Waiting 3m0s for boot...
==> qemu.focal: Waiting 3m0s for boot...
==> qemu.jammy: Waiting 10s for boot...
==> qemu.jammy: Connecting to VM via VNC (127.0.0.1:5920)
==> qemu.jammy: Typing the boot command over VNC...
    qemu.jammy: Not using a NetBridge -- skipping StepWaitGuestAddress
==> qemu.jammy: Using SSH communicator to connect: 127.0.0.1
==> qemu.jammy: Waiting for SSH to become available...
==> qemu.bionic: Connecting to VM via VNC (127.0.0.1:5951)
==> qemu.bionic: Typing the boot command over VNC...
    qemu.bionic: Not using a NetBridge -- skipping StepWaitGuestAddress
==> qemu.bionic: Using SSH communicator to connect: 127.0.0.1
==> qemu.bionic: Waiting for SSH to become available...
==> qemu.focal: Connecting to VM via VNC (127.0.0.1:5992)
==> qemu.focal: Typing the boot command over VNC...
    qemu.focal: Not using a NetBridge -- skipping StepWaitGuestAddress
==> qemu.focal: Using SSH communicator to connect: 127.0.0.1
==> qemu.focal: Waiting for SSH to become available...
==> qemu.bionic: Connected to SSH!
==> qemu.bionic: Gracefully halting virtual machine...
==> qemu.jammy: Connected to SSH!
==> qemu.jammy: Gracefully halting virtual machine...
==> qemu.focal: Connected to SSH!
==> qemu.focal: Gracefully halting virtual machine...
==> qemu.bionic: Converting hard drive...
Build 'qemu.bionic' finished after 7 minutes 25 seconds.
==> qemu.focal: Converting hard drive...
==> qemu.jammy: Converting hard drive...
Build 'qemu.focal' finished after 7 minutes 57 seconds.
Build 'qemu.jammy' finished after 8 minutes 30 seconds.

==> Wait completed after 8 minutes 30 seconds

==> Builds finished. The artifacts of successful builds are:
--> qemu.jammy: VM files in directory: output
--> qemu.bionic: VM files in directory: output
--> qemu.focal: VM files in directory: output
ubuntu@f0d07894491f:/jammy$
```
