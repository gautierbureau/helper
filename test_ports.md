To test is I can connect to a certain service on a remote server and on certain port use

``` bash
$> telnet server_ip port
$> nc -zvw3 server_ip port
$> cat < /dev/tcp/server_ip/port
$> curl http://server_ip:port
$> echo > /dev/tcp/server_ip/port && echo Port is open || echo Port is closed
$> < /dev/tcp/server_ip/port && echo Port is open || echo Port is closed
```

To see if port is open on distant server:
``` bash
$> nmap server_ip -p port
```

https://superuser.com/questions/621870/test-if-a-port-on-a-remote-system-is-reachable-without-telnet

``` bash
$> cat /etc/services
$> cat /etc/protocols
```
