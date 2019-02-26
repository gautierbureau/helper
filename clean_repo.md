``` bash
for file in $(git ls-files -- . ':!:*.png' ':!:*.pdf' ':!:*.tar.gz'); do
  sed -i 's/^[[:space:]]*$//' $file
  sed -i 's/[[:space:]]*$//' $file
  [ -n "$(tail -c1 $file)" ] && echo >> $file
done
```

See files with no newline at the end of file

``` bash
for file in $(git ls-files -- . ':!:*.png' ':!:*.pdf' ':!:*.tar.gz'); do
  if [ -n "$(tail -c1 $file)" ]; then
    echo $file
  fi
done
```
