Look for bin of header:
``` bash
$> dnf provides */name
```

To use older repo
``` bash
$> dnf update --repo=fedora --releasever=27
$> cat /etc/yum.repos.d/fedora.repo
```

To see repo
``` bash
$> dnf install librepo
$> dnf repolist -v
$> dnf repolist all
$> dnf --showduplicates list
$> ls /etc/yum.repos.d/
$> dnf config-manager --dump
$> cat /etc/dnf/dnf.conf
```

Some commands
``` bash
$> rpm -q yum
$> dnf info yum
$> dnf info package
$> sudo dnf history userinstalled
$> sudo yum history list all
$> sudo yum history list
$> dnf history list
$> dnf history info package
$> dnf provides */iscsiadm
$> dnf list installed
$> dnf check-update
$> dnf download httpd
```

new download command pour télécharger des rpm
``` bash
$> dnf install dnf-plugins-core
```
https://www.rootusers.com/25-useful-dnf-command-examples-for-package-management-in-linux/
