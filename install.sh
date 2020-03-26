#!/bin/sh

# TODO
# make sure this is running as root

cd /tmp
echo "Check if git is installed..."
git --version

# TODO
# switch to Beowulf repos
# apt install xinit xserver-xorg

sed -i /GRUB_CMDLINE_LINUX_DEFAULT=\"(.*)\"/GRUB_CMDLINE_LINUX_DEFAULT=\"\1 usbcore.autosuspend=-1\"/g /etc/default/grub

update-grub
