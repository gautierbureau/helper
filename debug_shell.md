``` bash
$> ( set -x; cmd1; cmd2 )
$> set -v
$> set -x
$> bash -vx ./script.sh
```

With var env `_DEBUG="on"`

``` bash
DEBUG() {
 [ "$_DEBUG" == "on" ] && $@
}
$> DEBUG echo "File is $filename"
$> DEBUG set -x
$> Cmd1
$> Cmd2
$> DEBUG set +x
```

`#!/bin/bash -xv`

[ShellCheck](https://www.cyberciti.biz/programming/improve-your-bashsh-shell-script-with-shellcheck-lint-script-analysis-tool/) 
