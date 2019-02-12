``` bash
$> useradd -m -d /home/toto -u 1001 -g 11 -c “Comment" -s /bin/zsh gautier
```
`-m` : create home dir

To see defaults `useradd -D`

Create group
``` bash
$> groupadd gautier -g 11
```

List group
``` bash
$> getent group
```

Add user to group
``` bash
$> usermod -aG wheel gautier
```

Password change:
``` bash
$> passwd gautier
$> echo "1234" | passwd --stdin "gautier"
$> echo "gautier:1234" | chpasswd
```

Change owner
``` bash
chown -R user:group file.txt
```

Change default shell
``` bash
$> chsh -s /bin/zsh
```
