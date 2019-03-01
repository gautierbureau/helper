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
# for loop:
for (( i = 0; i < 20; i++ )); do
  echo $i
done
# While loop:
i=0
while [[ $i -lt 20 ]]; do
  echo $i
  let i++
done
# For loop using seq:
for i in $(seq 0 19); do
  echo $i
done
# brace expansion
for i in {0..19}; do
  echo $i
done
```
