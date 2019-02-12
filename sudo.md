On Fedora `wheel` is the equivalent of `sudo` group on Ubuntu.

To edit sudo rights
``` bash
$> visudo
$> echo 'gautier ALL=(root) NOPASSWD: /bin/mount,/bin/umount' >> /etc/sudoers
$> echo '%wheel ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
$> echo 'gautier ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
$> sed -i 's/#.*\(%wheel.*NOPASSWD.*\)/\1/' /etc/sudoers
```

See my sudo right
``` bash
$> sudo -l
```


``` bash
$> dnf install sudo
$> usermod -aG sudo gautier
$> usermod -aG wheel gautier
```

sudo logs
``` bash
$> cat /var/log/audit/audit.log
```
