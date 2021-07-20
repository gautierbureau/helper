``` bash
$> docker exec -e VAR container_name bash
```

``` bash
$> docker attach container_name
```

`/var/lib/docker/`

Some examples for Dockerfile for multiple applications (and with GUI)

https://github.com/jessfraz/dockerfiles

https://cntnr.io/running-guis-with-docker-on-mac-os-x-a14df6a76efc

http://wiki.ros.org/docker/Tutorials/GUI

https://github.com/rogaha/docker-desktop

scp dynawo/share/dictionaries_mapping.dic bureaugau@10.159.81.27:/tmp

https://medium.com/@oprearocks/how-to-properly-override-the-entrypoint-using-docker-run-2e081e5feb9d

https://stackoverflow.com/questions/19688314/how-do-you-attach-and-detach-from-dockers-process

docker exec -e COLUMNS="`tput cols`" -e LINES="`tput lines`" -ti awesome_kilby sh

stty size

stty
tput : ncurses

tput cols
tput lines

## deamon

Pour personaliser les options du deamon: /etc/systemd/system/docker.service.d/custom.conf
J'ai ajouté : /etc/systemd/system/docker.service.d/seccomp/default.json https://github.com/moby/moby/blob/master/profiles/seccomp/default.json pour résoudre le soucis lié statx https://stackoverflow.com/questions/51195528/rcc-error-in-resource-qrc-cannot-find-file-png
j'ai ajouté l'option au deamon : --seccomp-profile /etc/systemd/system/docker.service.d/seccomp/default.json

https://stackoverflow.com/questions/48995826/which-capabilities-are-needed-for-statx-to-stop-giving-eperm
