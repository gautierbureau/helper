``` bash
$> wget https://developers.redhat.com/download-manager/file/rhel-8.0-x86_64-dvd.iso
$> wget https://download.fedoraproject.org/pub/fedora/linux/releases/30/Server/x86_64/iso/Fedora-Server-dvd-x86_64-30-1.2.iso
$> wget http://centos.mirrors.benatherton.com/7.6.1810/isos/x86_64/CentOS-7-x86_64-DVD-1810.iso
$> wget http://ubuntu-releases.mirrors.proxad.net/bionic/ubuntu-18.04.2-live-server-amd64.iso
$> wget https://archives.fedoraproject.org/pub/archive/fedora/linux/releases/27/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-27-1.6.iso
```

http://vault.centos.org/

[https://developers.redhat.com/rhel8/install-rhel8/](https://developers.redhat.com/rhel8/install-rhel8/)

[https://developers.redhat.com/rhel8/install-rhel8-vbox/](https://developers.redhat.com/rhel8/install-rhel8-vbox/)

[https://archives.fedoraproject.org/pub/archive/fedora/linux/releases/](https://archives.fedoraproject.org/pub/archive/fedora/linux/releases/)


## Red hat

subscription-manager register --username=gautierbureau
subscription-manager list --available
subscription-manager attach --pool=
subscription-manager attach --auto
dnf repolist<
subscription-manager repos --list
subscription-manager repos --enable=*

subscription-manager repos --enable codeready-builder-for-rhel-8-x86_64-rpms : for devel packages

subscription-manager-gui

https://linuxconfig.org/enable-subscription-management-repositories-on-redhat-8-linux

yum install gcc kernel-devel kernel-headers dkms make bzip2 perl

https://www.if-not-true-then-false.com/2010/install-virtualbox-guest-additions-on-fedora-centos-red-hat-rhel/

epel: https://linuxconfig.org/redhat-8-epel-install-guide

alternatives --set python /usr/bin/python3

https://developers.redhat.com/blog/2018/11/14/python-in-rhel-8/

## Mount ISO

mkdir /media/iso
mount -o loop -t iso9660 /home/gautier/Downloads/VBoxGuestAdditions_6.1.0_BETA1.iso /media/iso
https://download.virtualbox.org/virtualbox/6.1.0_BETA1/VBoxGuestAdditions_6.1.0_BETA1.iso

## Atomic repo

``` bash
$> wget -q -O - http://www.atomicorp.com/installers/atomic | sh
```
