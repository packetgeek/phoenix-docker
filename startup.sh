#!/bin/bash

# Depending on your host machine, following can take up to a couple minutes to boot

exec qemu-system-x86_64 \
  -nographic \
  -kernel vmlinuz-4.9.0-8-amd64 \
  -initrd initrd.img-4.9.0-8-amd64 \
  -append "root=/dev/vda1" \
  -m 1024M \
  -netdev user,id=unet,hostfwd=tcp:0.0.0.0:2222-:22 \
  -device virtio-net,netdev=unet \
  -drive file=exploit-education-phoenix-amd64.qcow2,if=virtio,format=qcow2,index=0 


