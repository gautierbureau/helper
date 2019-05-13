#/bin/bash

if [ -z "$1" ]; then
  echo "You must provide a name for the VM."
  exit 1
fi

VM_NAME="$1"

VM_PATH="$(VBoxManage list systemproperties | grep folder | cut -d ':' -f 2 | sed 's/^\s*//')"

VBoxManage createvm --name "$VM_NAME" --ostype Linux_64 --register
VBoxManage createmedium --filename "$VM_PATH"/"$VM_NAME"/"$VM_NAME" --format VDI --size 30000
VBoxManage modifyvm "$VM_NAME" --memory 4096 --cpus 2
VBoxManage modifyvm "$VM_NAME" --vram 128
VBoxManage modifyvm "$VM_NAME" --clipboard bidirectional --draganddrop bidirectional
VBoxManage storagectl "$VM_NAME" --name IDE_"$VM_NAME" --add ide
VBoxManage storagectl "$VM_NAME" --name SATA_"$VM_NAME" --add sata
VBoxManage storagectl "$VM_NAME" --name SCSI_"$VM_NAME" --add scsi
if [ ! -z "$2" ]; then
  PATH_TO_ISO="$2"
  VBoxManage storageattach "$VM_NAME" --storagectl IDE_"$VM_NAME" --port 0 --device 0 --type dvddrive --medium "$PATH_TO_ISO"
fi
VBoxManage storageattach "$VM_NAME" --storagectl SATA_"$VM_NAME" --port 0 --device 0 --type hdd --medium "$VM_PATH"/"$VM_NAME"/"$VM_NAME".vdi
VBoxManage modifyvm "$VM_NAME" --boot1 dvd --boot2 disk --boot3 none --boot4 none
VBoxManage modifyvm "$VM_NAME" --nic1 nat
if [ ! -z "$3" ]; then
  ADAPTER_NAME="$3"
  VBoxManage modifyvm "$VM_NAME" --nic2 bridged --bridgeadapter1 "$ADAPTER_NAME"
else
  VBoxManage modifyvm "$VM_NAME" --nic2 bridged
fi
VBoxManage modifyvm "$VM_NAME" --natpf1 "guestssh_"$VM_NAME",tcp,,2222,,22"
#VBoxManage sharedfolder add "$VM_NAME" --name home --hostpath "$HOME" --automount
