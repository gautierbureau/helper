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

[Link1](https://dev.to/darksmile92/run-gui-app-in-linux-docker-container-on-windows-host-4kde)
[Link2](https://blog.docker.com/2013/07/docker-desktop-your-desktop-over-ssh-running-inside-of-a-docker-container/)
[Link3](http://fabiorehm.com/blog/2014/09/11/running-gui-apps-with-docker/)
[Link4](https://stackoverflow.com/questions/40024892/windows-10-docker-host-display-gui-application-from-linux-container)
