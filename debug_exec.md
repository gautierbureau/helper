``` bash
$> strace ./main
$> strace -p PID
$> gstack PID
$> ltrace ./main
$> LD_DEBUG=libs ./main
$> LD_DEBUG=help ./main
$> dwarfdump
$> abi-dump
$> readelf -Ws Lib.so | c++filt
$> file main
$> objdump -t Model.so | c++filt
$> ldd -r Model.so
$> readelf -d Model.so # same as ldd
$> nm -C -D Model.so
$> valgrind --track-origins=yes --leak-check=full --show-leak-kinds=all ./main
```

rpath linux
``` bash
$> objdump -x
$> readelf -d
$> chrpath
$> patchelf
```

[https://amir.rachum.com/blog/2016/09/17/shared-libraries/](https://amir.rachum.com/blog/2016/09/17/shared-libraries/)


[Tools](https://github.com/zardus/ctf-tools)
[Tools](https://linuxsecurity.expert/security-tools/binary-analysis-tools)

[Tuto1][http://nickdesaulniers.github.io/blog/2016/11/20/static-and-dynamic-libraries/]
[Tuto2][http://nickdesaulniers.github.io/blog/2016/08/13/object-files-and-symbols/]
