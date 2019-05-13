## Partitions

Avec un dique partitionné avec MBR on peut avoir la config:
MBR: < primary | primary | primary | primary >

MBR: < primary | primary | extended [logical, logical, logical] >

On ne peut avoir que 4 paritions primaires. GPT peut remédier à ca.

Various infos
``` bash
$> fdisk -l /dev/sda
$> lsblk
$> parted -l /dev/sda
$> ls /dev/disk/by-id/
$> sfdisk -l /dev/sda
$> gdisk -l /dev/sdb # for GPT
$> blkid -o list
$> cat /proc/partitions
```

Infos sur les disques montées par défaut au boot de la machine
``` bash
$> cat /etc/fstab
```

Save partition table
``` bash
$> sfdisk -d /dev/sda > sda.partition.table
$> sfdisk /dev/sda < sda.partition.table
```

``` bash
> dnf install cloud-utils-growpart
```

Extend partition Parted
``` bash
$> parted /dev/sda
(parted) resizepart
Asked number : 4
```

Extend partition:
``` bash
$> growpart /dev/sda 4
```

Extend partition fdisk, il faut supprimer la partition et la recréer, tant qu'on a pas fait w il n'y a aucun risque, sinon q sort et ne change rien, le plus simple est de rajouter l'espace libre à la dernière partition, sinon ça serait bcp plus compliqué
``` bash
$> fdisk /dev/sda
p
d
-> 4
n
-> 4
```

Create partition fdisk
``` bash
$> fdisk /dev/sda
p
n
-> 4
l # list types
t # type of the partition
-> 4
-> 20
```

Create parition gdisk
``` bash
$> gdisk /dev/sdb
n
1
default …
p
w
```

[https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/storage_administration_guide/ch-partitions](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/storage_administration_guide/ch-partitions)

## LVM

- vg: volume group
- pv: physical volume
- lv: logical volume
- pe: physical extent

``` bash
$> pvdisplay
$> vgdisplay
$> lvdisplay
$> pvs
$> vgs
$> lvs
$> pvresize /dev/sda4
$> lvextend -l +100%FREE /dev/mapper/vg0-root /dev/sda4
```

[http://www.tldp.org/HOWTO/LVM-HOWTO/](http://www.tldp.org/HOWTO/LVM-HOWTO/)

[https://doc.ubuntu-fr.org/lvm](https://doc.ubuntu-fr.org/lvm)

## File system

xfs, ext2, ext3, etx4 ...

``` bash
$> xfs_growfs /dev/vg_system/lv_home
$> resize2fs -f /dev/mapper/vg_system-lv_home
$> e2fsck /dev/sd4
```

``` bash
$> mkfs
$> mkfs -t xfs /dev/sdb1
$> tune2fs -l /dev/sdb1
```

## Mount disk

``` bash
$> mkdir /mnt/data
$> mount -t xfs /dev/sdc2 /mnt/data/
$> echo '/dev/sdc2 /mnt/data xfs defaults 0 0' >> /etc/fstab
```

## Links

[https://access.redhat.com/articles/1190213](https://access.redhat.com/articles/1190213)

[https://serverfault.com/questions/861517/centos-7-extend-partition-with-unallocated-space](https://serverfault.com/questions/861517/centos-7-extend-partition-with-unallocated-space)

[https://www.tecmint.com/extend-and-reduce-lvms-in-linux](https://www.tecmint.com/extend-and-reduce-lvms-in-linux)

[https://www.brianchristner.io/how-to-resize-ubuntu-root-partition/](https://www.brianchristner.io/how-to-resize-ubuntu-root-partition/)

[https://www.tldp.org/LDP/sag/html/partitions.html](https://www.tldp.org/LDP/sag/html/partitions.html)

[https://www.croc-informatique.fr/2015/02/etendre-un-volume-group-et-logique-chaud-sur-une-machine-virtuelle-sous-centos/](https://www.croc-informatique.fr/2015/02/etendre-un-volume-group-et-logique-chaud-sur-une-machine-virtuelle-sous-centos/)

[https://blog.microlinux.fr/lvm-centos/](https://blog.microlinux.fr/lvm-centos/)

[https://www.binarytides.com/linux-command-check-disk-partitions/](https://www.binarytides.com/linux-command-check-disk-partitions/)

[https://www.tecmint.com/fdisk-commands-to-manage-linux-disk-partitions/](https://www.tecmint.com/fdisk-commands-to-manage-linux-disk-partitions/)

[https://www.linuxquestions.org/questions/linux-newbie-8/vgextend-lvm-resizing-4175463294/](https://www.linuxquestions.org/questions/linux-newbie-8/vgextend-lvm-resizing-4175463294/)

[https://www.thegeekdiary.com/centos-rhel-how-to-resize-extend-existing-physical-volume-pv](https://www.thegeekdiary.com/centos-rhel-how-to-resize-extend-existing-physical-volume-pv)

[https://tzclouds.com/2018/09/01/how-to-extend-lvm-volume-in-centos-7-and-rhel-7/](https://tzclouds.com/2018/09/01/how-to-extend-lvm-volume-in-centos-7-and-rhel-7/)

[https://www.howtoforge.com/logical-volume-manager-how-can-i-extend-a-volume-group](https://www.howtoforge.com/logical-volume-manager-how-can-i-extend-a-volume-group)

[https://www.linuxtechi.com/extend-volume-group-size/](https://www.linuxtechi.com/extend-volume-group-size/)

[https://www.ryadel.com/en/resize-extend-disk-partition-unallocated-disk-space-linux-centos-rhel-ubuntu-debian/](https://www.ryadel.com/en/resize-extend-disk-partition-unallocated-disk-space-linux-centos-rhel-ubuntu-debian/)

[https://serverfault.com/questions/861517/centos-7-extend-partition-with-unallocated-space](https://serverfault.com/questions/861517/centos-7-extend-partition-with-unallocated-space)

[https://adam.younglogic.com/2016/01/resize-disks-centos-7/](https://adam.younglogic.com/2016/01/resize-disks-centos-7/)

[https://blog.microlinux.fr/lvm-centos/](https://blog.microlinux.fr/lvm-centos/)

[https://codingbee.net/rhcsa/rhcsa-creating-partitions](https://codingbee.net/rhcsa/rhcsa-creating-partitions)

[https://www.binarytides.com/linux-command-check-disk-partitions/](https://www.binarytides.com/linux-command-check-disk-partitions/)

[https://www.tecmint.com/fdisk-commands-to-manage-linux-disk-partitions/](https://www.tecmint.com/fdisk-commands-to-manage-linux-disk-partitions/)

[https://www.monlinux.net/2014/12/reduire-augmenter-taille-logical-volume-lvm/](https://www.monlinux.net/2014/12/reduire-augmenter-taille-logical-volume-lvm/)

[https://www.ionos.com/help/server-cloud-infrastructure/linux-dedicated-server/file-system/enlarging-an-existing-volume-on-your-server/](https://www.ionos.com/help/server-cloud-infrastructure/linux-dedicated-server/file-system/enlarging-an-existing-volume-on-your-server/)
