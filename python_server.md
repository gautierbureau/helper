Python package to emulate an http server locally in a folder (you can the donwload every file in folder with `wget`)
``` bash
$> cd folder
$> nohup python3 -m http.server 8080 &> /dev/null &
$> nohup python -m SimpleHTTPServer 8080 &> /dev/null &
```
