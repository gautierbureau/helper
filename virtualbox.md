``` bash
$> VBoxManage list vms
$> VBoxManage list runningvms
$> VBoxManage list hdds
$> VBoxManage natnetwork list
$> VBoxManage list systemproperties
$> VBoxManage setproperty machinefolder /path/to/directory/
```

``` bash
$> VM_PATH=$(VBoxManage list systemproperties | grep folder | cut -d ':' -f 2 | sed 's/^\s*//')
```

``` bash
$> VBoxManage startvm Test
$> VBoxManage controlvm Test poweroff
$> VBoxHeadless -s Test
$> VBoxManage startvm Test --type headless
```

``` bash
VBoxManage createmedium --filename "$VM_PATH"/Test --format VDI --size 30000
VBoxManage modifymedium "$VM_PATH"/Test.vdi --resize 40000
```

``` bash
VBoxManage createvm --name Test --ostype Linux_64 —register
VBoxManage modifyvm Test --memory 4096 --cpus 2
VBoxManage modifyvm Test --vram 128
VBoxManage modifyvm Test --clipboard bidirectional --draganddrop bidirectional
VBoxManage storagectl Test --name IDE --add ide
VBoxManage storagectl Test --name SATA --add sata
VBoxManage storagectl Test --name SCSI --add scsi
VBoxManage storageattach Test --storagectl IDE --port 0 --device 0 --type dvddrive --medium ~/Downloads/gparted-live-0.33.0-1-i686.iso
VBoxManage storageattach Test --storagectl IDE --port 0 --device 0 --type dvddrive --medium none
VBoxManage storageattach Test --storagectl SATA --port 0 --device 0 --type hdd --medium "$VM_PATH"/Test.vdi
VBoxManage modifyvm Test --boot1 dvd --boot2 disk --boot3 none --boot4 none
VBoxManage modifyvm Test --natpf1 "guestssh,tcp,,2222,,22"
VBoxManage modifyvm Test --vrde on
VBoxManage modifyvm Test --nic1 nat
VBoxManage modifyvm Test --nic2 bridged --bridgeadapter1 name
VBoxManage sharedfolder add Test --name home --hostpath "$HOME" --automount
```

``` bash
$> VBoxManage unregistervm Test --delete
```

``` bash
$> wget https://download.virtualbox.org/virtualbox/6.0.6/Oracle_VM_VirtualBox_Extension_Pack-6.0.6.vbox-extpack
$> VBoxManage extpack install ~/Downloads/Oracle_VM_VirtualBox_Extension_Pack-6.0.6.vbox-extpack
```

## ssh

Problem of multiple machine with ssh: solution /etc/hosts
https://superuser.com/questions/877894/ssh-to-a-local-virtualbox-with-ubuntu
ssh-keygen -R '[fedoraserver_vm]:2222’

## Vocabulary

- VRDP: VirtualBox Remote Display Protocol
- VRDE: VirtualBox Remote Desktop Extension

VBoxVRDP is backward compatibility for VBoxHeadless

krdc: KDE Remote Desktop Client
