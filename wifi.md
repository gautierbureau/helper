nmcli dev wifi list
lspci
iwlist wlan0 scan
nmcli device status

sudo systemctl start wpa_supplicant.service
nmcli dev wifi list
nmcli --ask connection up <ssid>


rm /etc/network/interfaces.d/something.conf
sudo systemctl restart network-manager.service
systemctl status NetworkManager.service
systemctl restart NetworkManager.service

dmesg

journalctl -b -2 | grep wlp2s0
journalctl -b -2 | grep wifi


pour trouver ton interface de réseau sans fil tu tapes iwconfig, tu auras la liste des interfaces disponibles (eth0... etc)
pour la relancer tu tapes ifup ton_interface, par exemple ifup eth0


Cas1: j'ai le logo wifi mais je ne peux pas détecter des réseaux, d'après les logs ça viendrait de wpa_supplicant, journalctl -b -3 | grep wlp2s0
Cas2: je n'ai meme pas le logo wifi, journalctl -b -2 | grep wlp2s0 ne donne rien par contre journalctl -b -2 | grep wifi me donne qu'il y a des erreurs avec iwlwifi

1. modprobe -r iwlwifi
2. sleep a while
3. modprobe iwlwifi
4. sleep a while
5. check the WiFi status
I did the steps in a loop.
