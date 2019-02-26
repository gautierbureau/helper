#!/bin/bash

echo '# Helper' > README.md
echo >> README.md
files=$(find . -maxdepth 1 -name "*.md" | grep -v README | sort)

for file in ${files[@]}; do
  name=$(basename $file .md)
  echo "- [$name]($file)" >> README.md
done
