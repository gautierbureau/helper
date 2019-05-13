In /etc/ssh/ssh_config
```
X11Forwarding yes
X11UseLocalhost no
```

If `ssh -X` fails, ie `DISPLAY` variable is not set try, to see debug
``` bash
ssh -v -Y -p 2222 gautier@FedoraServer_vm
```

xauth problems:
``` bash
$> dnf install xauth
$> xauth generate localhost:10.0 . trusted
$> xauth add $DISPLAY MIT-MAGIC-COOKIE-1 1234
$> xauth list
```

[http://justaix.blogspot.com/2011/01/createrebuild-new-xauthority-file.html](http://justaix.blogspot.com/2011/01/createrebuild-new-xauthority-file.html)

[https://serverfault.com/questions/273847/what-does-warning-untrusted-x11-forwarding-setup-failed-xauth-key-data-not-ge](https://serverfault.com/questions/273847/what-does-warning-untrusted-x11-forwarding-setup-failed-xauth-key-data-not-ge)

`debug1: No xauth program.` il ne trouve pas le xauth cote client...

In ~/.ssh/config fo mac
```
Host *
    XAuthLocation /opt/X11/bin/xauth
```
