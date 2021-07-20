F12 on Dell

## Tools

``` bash
$> dnf install mediawriter
$> dnf install livecd-tools
```

## Procedure
``` bash
$> livecd-iso-to-disk Fedora-Workstation-Live-x86_64-31-1.1.iso /dev/sdX
$> livecd-iso-to-disk --reset-mbr Fedora-Workstation-Live-x86_64-31-1.1.iso /dev/sdX
$> livecd-iso-to-disk --format --reset-mbr Fedora-Workstation-Live-x86_64-31-1.1.iso /dev/sdX
$> livecd-iso-to-disk --home-size-mb 2048 Fedora-Workstation-Live-x86_64-31-1.1.iso /dev/sdX
```
