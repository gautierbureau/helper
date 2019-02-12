Simple proxy functions

``` bash
load_proxy() {
  login=gautier;
  proxy_add=192.0.0.1;
  proxy_port=1212;
  read -s -p "Password: " MDP
  echo
  export http_proxy=http://$login:$MDP@$proxy_add:$proxy_port/
  export https_proxy=http://$login:$MDP@$proxy_add:$proxy_port/
  export no_proxy=localhost,127.0.0.0/8,::1
  export HTTP_PROXY=$http_proxy;export HTTPS_PROXY=$https_proxy;export NO_PROXY=$no_proxy;
}

delete_proxy() {
  unset http_proxy
  unset https_proxy
  unset no_proxy
  unset HTTP_PROXY
  unset HTTPS_PROXY
  unset NO_PROXY
}
```

On Fedora more complex solution with `seahorse` (a password manager in Gnome):

``` bash
$> dnf install seahorse
$> secret-tool store --label='My password' purpose http_proxy location mycompany.com
```

``` bash
load_proxy() {
  login=gautier;
  proxy_add=192.0.0.1;
  proxy_port=1212;
  export http_proxy=http://$login:$(secret-tool lookup purpose http_proxy location mycompany.com)@$proxy_add:$proxy_port/
  export https_proxy=http://$login:$(secret-tool lookup purpose http_proxy location mycompany.com)@$proxy_add:$proxy_port/
  export HTTP_PROXY=$http_proxy;export HTTPS_PROXY=$https_proxy;export NO_PROXY=$no_proxy;
}
```
