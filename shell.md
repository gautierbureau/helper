Brace expansion
``` bash
for file in ~/{file1,file2}; do
	if [[ -r "$file" ]] && [[ -f "$file" ]]; then
		source "$file"
	fi
done
```

Loops
``` bash
## for loop:
for (( i = 0; i < 20; i++ )); do
  echo $i
done
## While loop:
i=0
while [[ $i -lt 20 ]]; do
  echo $i
  let i++
done
## For loop using seq:
for i in $(seq 0 19); do
  echo $i
done
## brace expansion
for i in {0..19}; do
  echo $i
done
```

## if else
$? = 0 = true
$? > 0 = false

## arrays

`+=` operator is available

``` bash
ARRAY=()
ARRAY+=('foo')
ARRAY+=('bar')
```

## confirmation

``` bash
# Here I have to modify IFS to capt \n and use -N and not -n
# See Escape sequence note
IFS= read -r -N 1 -p $'Continue \e[31m(y/n)?\e[m ' choice
if [ ! "$choice" == $'\n' ]; then echo; fi
case "$choice" in
  [yY])
		echo "yes"
		;;
  [nN]|$'\n')
		echo "no"
		;;
  *)
		echo "invalid"
		;;
esac
```
