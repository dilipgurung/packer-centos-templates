yum -y clean all

rm -rf /tmp/*

rm -f /etc/udev/rules.d/70-persistent-net.rules
mkdir /etc/udev/rules.d/70-persistent-net.rules

rm -rf /dev/.udev/

# Minimize the final box size
dd if=/dev/zero of=/EMPTY bs=1M
rm -rf /EMPTY