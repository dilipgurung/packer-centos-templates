#!/bin/sh

yum -y install gcc make gcc-c++ kernel-devel-`uname -r` perl bzip2

mkdir /tmp/virtualbox

mount -o loop /home/vagrant/VBoxGuestAdditions.iso /tmp/virtualbox
sh /tmp/virtualbox/VBoxLinuxAdditions.run
umount /tmp/virtualbox
rm -rf /tmp/virtualbox
rm -rf /home/vagrant/VBoxGuestAdditions.iso