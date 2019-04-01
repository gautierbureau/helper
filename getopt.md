## getopts

Only for -h, -o type of option

[Tuto](https://wiki.bash-hackers.org/howto/getopts_tutorial)

[https://stackoverflow.com/questions/192249/how-do-i-parse-command-line-arguments-in-bash](https://stackoverflow.com/questions/192249/how-do-i-parse-command-line-arguments-in-bash)

[https://gist.github.com/neatshell/5283811](https://gist.github.com/neatshell/5283811)

## getopt

To handle more complicated options for shell script.
``` bash
opts=`getopt -o '' --long "help,folder:" -n 'function_name' -- "$@"`
if [ $? -ne 0 ]; then usage; exit 1; fi
eval set -- "$opts"
while true; do
  case "$1" in
    --folder)
      MODE=create
      USER_FOLDER=$2
      shift 2
      ;;
    --help)
      usage
      exit 0
      ;;
    --)
      shift
      break
      ;;
    *)
      break
      ;;
  esac
done

case $MODE in
  create)
    create_container
    ;;
  *)
    echo
    usage
    exit 0
    ;;
esac
```

The : means the option has a mandatory argument, :: would mean it is optional.

``` bash
while (($#)); do
  case $1 in
    --install-dir=*)
      INSTALL_DIR=`echo $1 | sed -e 's/--install-dir=//g'`
      ;;
    --build-type=*)
      BUILD_TYPE=`echo $1 | sed -e 's/--build-type=//g'`
      ;;
    --build-dir=*)
      BUILD_DIR=`echo $1 | sed -e 's/--build-dir=//g'`
      ;;
    *)
      break
      ;;
  esac
  shift
done
```

``` bash
while (($#)); do
  case "$1" in
    --help)
      usage
      exit 0
      ;;
    --name)
      container_name=$2
      shift 2
      ;;
    *)
      echo "$1: invalid option."
      usage
      exit 1
      ;;
  esac
done
```

[Tuto](https://wiki.bash-hackers.org/scripting/posparams
  )

getopt is not portable (3 different implementations): [see](https://stackoverflow.com/questions/402377/using-getopts-to-process-long-and-short-command-line-options)
