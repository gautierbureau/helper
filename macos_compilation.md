``` bash
$> install_name_tool -add_rpath @loader_path/../lib mybinary
$> install_name_tool -change absolutePathForLib.dylib @rpath/libName.dylib mybinary
$> install_name_tool -delete_rpath absolutePath mybinary
$> install_name_tool -id absolutePathForLib.dylib @rpath/libName.dylib libName.dylib
```

`ld` option `-flat_namespace` and `-undefined warning` seemed to cause problem with dlopen when compiled in static. I added the option `-undefined warning` because of the undfined symbol of the Timer and with clang `ld` it is not possible to have undefined symbols, with gcc it is the opposite default behavior, to have the same behavior I thought `-undefined dynamic_lookup` was the best option but I had other problems with cast_of_pointer after that (not knowing if it is related or not). The `-flat_namespace` is mandatory if you use `-undefined warning` as clang use a two level namespace by default. dlopen and flat_namespace are linked for resolving symbols [see here](https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man3/dlopen.3.html) with RTLD_GLOBAL. Linux shared libraries behave as if `-undefined dynamic_lookup` is enabled all the time.

[https://wincent.com/wiki/@executable_path,_@load_path_and_@rpath](https://wincent.com/wiki/@executable_path,_@load_path_and_@rpath)

https://medium.com/@donblas/fun-with-rpath-otool-and-install-name-tool-e3e41ae86172


https://gitlab.kitware.com/cmake/community/wikis/doc/cmake/RPATH-handling


https://gist.github.com/robertmaynard/5750737

std::__cxx11::basic_string
std::__1::basic_string

https://www.boost.org/doc/libs/1_58_0/libs/log/doc/html/log/rationale/namespace_mangling.html

https://github.com/libbitcoin/libbitcoin-client/issues/116

https://stackoverflow.com/questions/25410886/boost-log-linker-error-with-macports-on-os-x-10-7
