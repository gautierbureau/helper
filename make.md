make 2>&1 | tee build.log
strace -f -e execve make
make SHELL="sh -x"
make -p
make -d
make -n

make -qp | awk -F':' '/^[a-zA-Z0-9][^$#\/\t=]*:([^=]|$)/ {split($1,A,/ /);for(i in A)print A[i]}' | sort -u