```bash
$> dnf install php-cli lighttpd-fastcgi
```

In `/etc/lighttpd/lighttpd.conf`
```
include "conf.d/messites.conf"
include "conf.d/php.conf"
```

https://doc.fedora-fr.org/wiki/Installation_et_configuration_de_PHP

Config PHP in `/etc/lighttpd/conf.d/php.conf`
```
server.modules += ( "mod_fastcgi" )
  fastcgi.server = ( ".php" =>
    (( "socket" => "/tmp/php-fastcgi.socket",
        "bin-path" => "/usr/bin/php-cgi"
    ))
  )
```

Config de mes sites in `/etc/lighttpd/conf.d/messites.conf`
```
server.modules += ( "mod_userdir" ) #Activation du module userdir
# URL: http://localhost/~pascal/index.html
# Path: /home/pascal/public_html/
userdir.path = "Codes/Web"  # obligatoire

#userdir.basepath = "/home/" #facultatif, /home par defaut
#userdir.exclude-user = ( "root", "postmaster" ) # facultatif, exclu certains utilisateurs
#userdir.include-user = ( "pascal" ) # facultatif, seulement les utilisateurs de cette liste sont autorisés
```

Home must be executable by user lighttpd
``` bash
$> chmod o+x $HOME
```

http://localhost/~bureaugau/Site_Test/index.html

``` bash
$> systemctl status lighttpd.service
```
