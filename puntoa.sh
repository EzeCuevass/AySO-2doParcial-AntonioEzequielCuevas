#!/bin/bash
sudo fdisk /dev/sdc
free -h
sudo mkswap /dev/sdc1
sudo swapon /dev/sdc1
free -h
cat /proc/swaps
swapon -s
sudo fdisk /dev/sdc
sudo fdisk -l
sudo pvcreate /dev/sdc2 /dev/sdc3 /dev/sdc5 /dev/sdc6
sudo vgcreate vgAdmin /dev/sdc2 /dev/sdc3
sudo vgs
sudo pvs
sudo vgcreate vgDevelopers /dev/sdc5 /dev/sdc6
sudo vgs
sudo lvcreate -L 1G vgDevelopers -n lvDevelopers
sudo lvcreate -L 1G vgDevelopers -n lvTesters
sudo lvcreate -L 0.8G vgDevelopers -n lvTesters
sudo lvcreate -L .9G vgDevelopers -n lvDevops
sudo pvs
sudo fdisk -l
fdisk /dev/sdc
sudo fdisk /dev/sdc
sudo shutdown -P now
sudo fdisk -l
sudo lvcreate -L 0.9G vgDevelopers -n lvDevelopers
sudo vgs
sudo vgcreate vgDevelopers /dev/sdc5 /dev/sdc6
sudo pvs
sudo lvcreate -L 1G vgDevelopers -n lvDevelopers
sudo lvcreate -L 0.8G vgDevelopers -n lvTesters
sudo lvcreate -L 0.8G vgDevelopers -n lvDevops
sudo lvcreate -L 2G vgAdmin -n lvAdmin
sudo lvcreate -L 1.9G vgAdmin -n lvAdmin
sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevelopers
sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvTesters
sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevops
sudo mkfs.ext4 /dev/mapper/vgAdmin-lvAdmin
sudo lsblk -f
sudo mkdir /mnt/lvDevelopers
sudo mkdir /mnt/lvTesters
sudo mkdir /mnt/lvDevops
sudo
sudo mount /dev/mapper/vgDevelopers-lvDevelopers /mnt/lvDevelopers
sudo mount /dev/mapper/vgDevelopers-lvTesters /mnt/lvTesters
sudo mount /dev/mapper/vgDevelopers-lvDevops /mnt/lvDevops
sudo mount /dev/mapper/vgAdmin-lvAdmin /mnt/lvAdmin
df -h
history
