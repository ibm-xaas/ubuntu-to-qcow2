#!/usr/bin/env bash
public_key=$(cat ~/.ssh/id_ed25519.pub)
cat <<EOF > user-data
#cloud-config
ssh_authorized_keys:
  - "${public_key}"
EOF

cat <<EOF > user-data-jammy
#cloud-config
autoinstall:
  version: 1
  identity:
    hostname: ubuntu
    username: ubuntu
    password: '$6$wdAcoXrU039hKYPd$508Qvbe7ObUnxoj15DRCkzC3qO7edjH0VV7BPNRDYK4QR8ofJaEEF2heacn0QgD.f8pO8SNp83XNdWG6tocBM1'
  ssh:
    install-server: yes
    authorized-keys:
      - "${public_key}"
EOF
cloud-localds packer/disk-ssh-pub-focal.img user-data
cloud-localds packer/disk-ssh-pub-bionic.img user-data
cp user-data-jammy packer/http/user-data
#jammy trial: failed 10/19/22
#rm -f user-data
#cp user-data-jammy user-data
#touch meta-data
#cloud-localds packer/disk-ssh-pub-jammy.img user-data meta-data
