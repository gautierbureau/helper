__imp_xxx symbol a un lien avec la décoration des symbols, __declspec(dllimport) specification and __declspec(dllexport)

j'ai eu un soucis avec libarchive qui avait ajouté un ZLIB_DLL macro qui devait mettre des symboles décorés du type __impt_inflate et pas directement inflate comme dans la libarchivestatic.lib

dumpbin /all zlib.lib
dumpbin /all zlibstatic.lib

dumpbin /exports : pour voir si la lib ou l'exe expose des symboles

les fichiers .lib vont de paire avec un dll ou alors c'est une lib static au sens classique du terme.

## Compile

To see assembly code, https://docs.microsoft.com/en-us/cpp/build/reference/decorated-names?view=vs-2019
``` batch
> cl /c /FAs example.cpp
```

To compile
``` batch
> cl /EHsc main.cpp
```

equivalent of `nm -C` is `undname`

## Deocration des symboles

`__declspec(dllexport)` and `__declspec(dllimport)`

https://wiki.tcl-lang.org/page/DLLEXPORT+and+DLLIMPORT

__acrt_first_block == header :
Problème de destructions des objets dans la dll d'objets instanciés dans l'exe où vice-versa car on a plusieurs heap.
https://stackoverflow.com/questions/35310117/debug-assertion-failed-expression-acrt-first-block-header

Link against exe : https://stackoverflow.com/questions/770344/visual-c-linking-plugin-dll-against-exe
