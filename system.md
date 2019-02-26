``` bash
$> systemctl status name
$> service name status
```

unit def in /lib/systemd/system

target unit at start : /etc/systemd/system

``` bash
$> pkg-config systemd --variable=systemdsystemconfdir
$> systemctl get-default
$> systemctl list-units --type target
$> systemctl list-units --type target --all
$> systemctl list-units --type service --all --no-pager
```

chkconfig service_name on | systemctl enable service_name

``` bash
$> systemctl stop service
$> systemctl disable service
$> systemctl mask service

$> systemctl list-dependencies --after service_name

$> systemctl halt
```

systemadm : gui package systemd-ui

``` bash
$> systctl -e -p /etc/sysctl.conf
$> systctl -a
$> echo "1" > /proc/sys/net/ipv4/ip_forward
```

``` bash
$> dmesg -T
$> dmesg -k -lwarn,err
```

/var/log/messages ou /var/log/syslog

``` bash
$> syslog
$> syslogd
```

``` bash
$> journalctl
$> journalctl -k -p warning..emerg
```

**noyau**
``` bash
$> uname
$> /lib/modules/$(uname -r)
```

**modules du noyau**

lsmod : modules du noyau charges
insmod : charge module sans dep
modprobe : charge avec dep

``` bash
$> depmod -a
$> modinfo
$> rmmod
```

/dev : peripheriques
``` bash
$> mknod
```

``` bash
$> lspci
$> lspci -v -s
$> lsusb
```

/proc : ressources materielles

``` bash
$> hwinfo
$> hwinfo --memory
$> hwinfo --cpu
$> dmidecode
$> dmidecode -t processor
$> dmidecode -s processor-frequency
```
