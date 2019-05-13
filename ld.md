# Test on ld command
working with gcc:
gcc -c ltest.c -I../KLU/Include -I../AMD/Include -I../UFconfig/  -I../COLAMD/Include -I../BTF/Include -o ltest.o
gcc ltest.o -o ltest -L. -Wl,--no-as-needed -lm -lklu

not working:
ld test.o -o test -L. -pie --entry main -lc -lm -lklu -dynamic-linker /lib/x86_64-linux-gnu/ld-linux-x86-64.so.2 -m elf_x86_64
ld  ltest.o -o ltest -L. --entry main -lc -lm -lklu -dynamic-linker /lib64/ld-linux-x86-64.so.2 --hash-style=gnu --build-id -m elf_x86_64

working but c/c from gcc output with -v and replace collect2:
ld --build-id --no-add-needed --eh-frame-hdr --hash-style=gnu -m elf_x86_64 -dynamic-linker /lib64/ld-linux-x86-64.so.2 -o ltest /usr/lib/gcc/x86_64-redhat-linux/7/../../../../lib64/crt1.o /usr/lib/gcc/x86_64-redhat-linux/7/../../../../lib64/crti.o /usr/lib/gcc/x86_64-redhat-linux/7/crtbegin.o -L. -L/usr/lib/gcc/x86_64-redhat-linux/7 -L/usr/lib/gcc/x86_64-redhat-linux/7/../../../../lib64 -L/lib/../lib64 -L/usr/lib/../lib64 -L/usr/lib/gcc/x86_64-redhat-linux/7/../../.. ltest.o -lm -lklu -lgcc --as-needed -lgcc_s --no-as-needed -lc -lgcc --as-needed -lgcc_s --no-as-needed /usr/lib/gcc/x86_64-redhat-linux/7/crtend.o /usr/lib/gcc/x86_64-redhat-linux/7/../../../../lib64/crtn.o

# as-needed error with omc

linker switch from --no-as-needed to --as-needed in its default options
http://www.bnikolic.co.uk/blog/gnu-ld-as-needed.html

--as-needed: The flag tells the linker to link in the produced binary only the libraries containing symbols actually used by the binary itself. This binary can be either a final executable or another library.
https://wiki.gentoo.org/wiki/Project:Quality_Assurance/As-needed

/usr/lib/gcc/x86_64-linux-gnu/8/collect2 -plugin /usr/lib/gcc/x86_64-linux-gnu/8/liblto_plugin.so -plugin-opt=/usr/lib/gcc/x86_64-linux-gnu/8/lto-wrapper -plugin-opt=-fresolution=/tmp/ccdGaSYK.res -plugin-opt=-pass-through=-lgcc -plugin-opt=-pass-through=-lgcc_s -plugin-opt=-pass-through=-lc -plugin-opt=-pass-through=-lgcc -plugin-opt=-pass-through=-lgcc_s --build-id --eh-frame-hdr -m elf_x86_64 --hash-style=gnu **--as-needed** -dynamic-linker /lib64/ld-linux-x86-64.so.2 -pie -z now -z relro -o ltest /usr/lib/gcc/x86_64-linux-gnu/8/../../../x86_64-linux-gnu/Scrt1.o /usr/lib/gcc/x86_64-linux-gnu/8/../../../x86_64-linux-gnu/crti.o /usr/lib/gcc/x86_64-linux-gnu/8/crtbeginS.o -L. -L/usr/lib/gcc/x86_64-linux-gnu/8 -L/usr/lib/gcc/x86_64-linux-gnu/8/../../../x86_64-linux-gnu -L/usr/lib/gcc/x86_64-linux-gnu/8/../../../../lib -L/lib/x86_64-linux-gnu -L/lib/../lib -L/usr/lib/x86_64-linux-gnu -L/usr/lib/../lib -L/usr/lib/gcc/x86_64-linux-gnu/8/../../.. ltest.o -lm -lklu -lgcc --push-state --as-needed -lgcc_s --pop-state -lc -lgcc --push-state --as-needed -lgcc_s --pop-state /usr/lib/gcc/x86_64-linux-gnu/8/crtendS.o /usr/lib/gcc/x86_64-linux-gnu/8/../../../x86_64-linux-gnu/crtn.o

/usr/libexec/gcc/x86_64-redhat-linux/7/collect2 -plugin /usr/libexec/gcc/x86_64-redhat-linux/7/liblto_plugin.so -plugin-opt=/usr/libexec/gcc/x86_64-redhat-linux/7/lto-wrapper -plugin-opt=-fresolution=/tmp/ccR68HwV.res -plugin-opt=-pass-through=-lgcc -plugin-opt=-pass-through=-lgcc_s -plugin-opt=-pass-through=-lc -plugin-opt=-pass-through=-lgcc -plugin-opt=-pass-through=-lgcc_s --build-id --no-add-needed --eh-frame-hdr --hash-style=gnu -m elf_x86_64 -dynamic-linker /lib64/ld-linux-x86-64.so.2 -o ltest /usr/lib/gcc/x86_64-redhat-linux/7/../../../../lib64/crt1.o /usr/lib/gcc/x86_64-redhat-linux/7/../../../../lib64/crti.o /usr/lib/gcc/x86_64-redhat-linux/7/crtbegin.o -L. -L/usr/lib/gcc/x86_64-redhat-linux/7 -L/usr/lib/gcc/x86_64-redhat-linux/7/../../../../lib64 -L/lib/../lib64 -L/usr/lib/../lib64 -L/usr/lib/gcc/x86_64-redhat-linux/7/../../.. ltest.o -lm -lklu -lgcc --as-needed -lgcc_s --no-as-needed -lc -lgcc --as-needed -lgcc_s --no-as-needed /usr/lib/gcc/x86_64-redhat-linux/7/crtend.o /usr/lib/gcc/x86_64-redhat-linux/7/../../../../lib64/crtn.o

https://stackoverflow.com/questions/44967115/weak-linking-vs-as-needed

For Ubuntu19.04
CFLAGS=-Wl,--no-as-needed
CXXFLAGS=-Wl,--no-as-needed

sqrt from libcolamd is not found in -lm if -Wl,--no-as-needed is not specified, omc has version 7 hardcoded so the error with gcc 8
