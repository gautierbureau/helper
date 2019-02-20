For MacOs
``` bash
$> ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
$> xhost + $ip
$> display_number=`ps -ef | grep "Xquartz :\d" | grep -v xinit | awk '{ print $9; }'`

$> open -a Xquartz

$> docker run --privileged -it -d -h $container_name --name=$container_name \
					-v $USER_HOME:$USER_HOME \
					-e DISPLAY=$ip:0 -v /tmp/.X11-unix:/tmp/.X11-unix\
					-w /home/$USER \
					fedora_display
```

In Security, "allow connections from network clients".

https://www.xquartz.org