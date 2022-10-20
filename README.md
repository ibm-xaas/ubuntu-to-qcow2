[![pre-commit](https://github.com/ibm-xaas/ubuntu-latest-jammy-to-qcow2/actions/workflows/pre-commit.yml/badge.svg?branch=main)](https://github.com/ibm-xaas/ubuntu-latest-jammy-to-qcow2/actions/workflows/pre-commit.yml)
# ubuntu-latest-jammy-to-qcow2
Retrieve the latest ubuntu (bionic, focal, and jammy) and convert to qcow2 format (after removing unattended upgrades)

# Test
```
ubuntu@f0d07894491f:/jammy/packer$ PACKER_LOG=0 packer build ubuntu.pkr.hcl
qemu.bionic: output will be in this color.
qemu.focal: output will be in this color.

==> qemu.focal: Retrieving ISO
==> qemu.bionic: Retrieving ISO
==> qemu.bionic: Trying https://cloud-images.ubuntu.com/bionic/current/bionic-server-cloudimg-amd64.img
==> qemu.focal: Trying https://cloud-images.ubuntu.com/focal/current/focal-server-cloudimg-amd64.img
==> qemu.bionic: Trying https://cloud-images.ubuntu.com/bionic/current/bionic-server-cloudimg-amd64.img?checksum=sha256%3A0a91d095b634d3a4e8eb042476e0bfc751168e69ae60f6b5885a006036508497
==> qemu.focal: Trying https://cloud-images.ubuntu.com/focal/current/focal-server-cloudimg-amd64.img?checksum=sha256%3A2591505cc6584a39bbab06d94491210dd406e2ed8a35d59f403acea60d4938a9
==> qemu.bionic: https://cloud-images.ubuntu.com/bionic/current/bionic-server-cloudimg-amd64.img?checksum=sha256%3A0a91d095b634d3a4e8eb042476e0bfc751168e69ae60f6b5885a006036508497 => /home/ubuntu/.cache/packer/97d7101ddbc6aa2ec1af6c257961c84966bd2d9c.iso
==> qemu.bionic: Copying hard drive...
==> qemu.focal: https://cloud-images.ubuntu.com/focal/current/focal-server-cloudimg-amd64.img?checksum=sha256%3A2591505cc6584a39bbab06d94491210dd406e2ed8a35d59f403acea60d4938a9 => /home/ubuntu/.cache/packer/7d9856cb66bc4b4cee0e739aa7cb65849b996da9.iso
==> qemu.focal: Copying hard drive...
==> qemu.bionic: Resizing hard drive...
==> qemu.focal: Resizing hard drive...
==> qemu.bionic: Starting HTTP server on port 8765
==> qemu.bionic: Found port for communicator (SSH, WinRM, etc): 4062.
==> qemu.bionic: Looking for available port between 5900 and 6000 on 127.0.0.1
==> qemu.bionic: Starting VM, booting disk image
==> qemu.bionic: Overriding default Qemu arguments with qemuargs template option...
==> qemu.focal: Starting HTTP server on port 8655
==> qemu.focal: Found port for communicator (SSH, WinRM, etc): 2284.
==> qemu.focal: Looking for available port between 5900 and 6000 on 127.0.0.1
==> qemu.focal: Starting VM, booting disk image
==> qemu.focal: Overriding default Qemu arguments with qemuargs template option...
==> qemu.bionic: Waiting 3m0s for boot...
==> qemu.focal: Waiting 3m0s for boot...
==> qemu.bionic: Connecting to VM via VNC (127.0.0.1:5937)
==> qemu.bionic: Typing the boot command over VNC...
    qemu.bionic: Not using a NetBridge -- skipping StepWaitGuestAddress
==> qemu.bionic: Using SSH communicator to connect: 127.0.0.1
==> qemu.bionic: Waiting for SSH to become available...
==> qemu.focal: Connecting to VM via VNC (127.0.0.1:5938)
==> qemu.focal: Typing the boot command over VNC...
    qemu.focal: Not using a NetBridge -- skipping StepWaitGuestAddress
==> qemu.focal: Using SSH communicator to connect: 127.0.0.1
==> qemu.focal: Waiting for SSH to become available...
==> qemu.bionic: Connected to SSH!
==> qemu.bionic: Gracefully halting virtual machine...
==> qemu.focal: Connected to SSH!
==> qemu.focal: Gracefully halting virtual machine...
==> qemu.bionic: Converting hard drive...
==> qemu.focal: Converting hard drive...
Build 'qemu.bionic' finished after 6 minutes 52 seconds.
Build 'qemu.focal' finished after 7 minutes 25 seconds.

==> Wait completed after 7 minutes 25 seconds

==> Builds finished. The artifacts of successful builds are:
--> qemu.bionic: VM files in directory: output
--> qemu.focal: VM files in directory: output
ubuntu@f0d07894491f:/jammy/packer$
```
