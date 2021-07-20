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

**logs**
/var/log/messages or /var/log/syslog
/etc/syslog.conf

``` bash
$> syslog
$> syslogd
```

``` bash
$> journalctl
$> journalctl -k -p warning..emerg
$> journalctl _SYSTEMD_UNIT=ssh.service -o json-pretty
$> journalctl -f
$> journalctl -e -u jenkins-slave.service
$> journalctl -b -1 # like dmesg for old kernel logs
$> journalctl --list-boots
```

/etc/systemd/journald.conf
/run/log/journal

klogd
syslog-ng
rsyslog

logger

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

date --date "1 jan 1970 +11234days"

lastlog
last

/etc/issue
/etc/issue.net
/etc/motd

/etc/pam.d

cups
localhost:631
/etc/cups/cupsd.conf

nmcli : NetworkManager
